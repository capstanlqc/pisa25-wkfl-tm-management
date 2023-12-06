const fs = require('fs');
const path = require('path');
const glob = require('glob');
const { JSDOM } = require('jsdom');


const repo = process.argv[2];

function getBatchDomains(batches) {
    // get domain of the batch
    return batches.map(getDomain);
}

function getDomain(file) {
    // get the name of this file or folder
    const fileName = file.includes('/') ? file.split('/').pop() : file;
    const pattern = /\.tmx(\.zip)?(\.idle)?$/;

    // find the domain depending on whether it is a batch TM or batch folder or a trend TM
    if (fileName.startsWith('PISA_') && fileName.match(pattern)) {
        const tentativeDomain = fileName.split('_')[2];
        if (allowedDomains['QQS'].includes(tentativeDomain) || allowedDomains['QQA'].includes(tentativeDomain)) {
            return Object.keys(allowedDomains).find(key => allowedDomains[key].includes(tentativeDomain)) || null;
        }
        return tentativeDomain;
    } else {
        if (fileName.includes('_QQS_') || fileName.includes('_QQA_')) {
            return fileName.split('_')[1];
        } else {
            const domain = fileName.split('_')[2]
            return domain.includes('-') ? domain.split('-')[0] : domain;
        }
    }
}

function deleteFile(file) {
    console.log(`>>> Delete ${file.replace(repo, '')} !!!`);
    try {
        fs.unlinkSync(file);
        console.log(`The file ${file} has been successfully deleted.`);
    } catch (err) {
        if (err.code === 'ENOENT') {
            console.log(`The file ${file} does not exist.`);
        } else {
            console.log(`An error occurred: ${err.message}`);
        }
    }
}

function createDir(dirPath) {
    try {
        fs.mkdirSync(dirPath, { recursive: true });
        console.log(`The folder ${dirPath} and any necessary ancestors in the path have been created.`);
    } catch (err) {
        console.log(`An error occurred: ${err.message}`);
    }
}

function moveFile(origPath, destPath) {
    console.log(`>>> Move ${origPath.replace(repo, '')} to ${destPath.replace(repo, '')} !!!`);
    const dirPath = path.dirname(destPath);
    createDir(dirPath);
    try {
        fs.renameSync(origPath, destPath);
        console.log(`The file ${path.basename(destPath)} has been successfully moved.`);
    } catch (err) {
        console.log(`An error occurred: ${err.message}`);
    }
}

function sortTrendTmxFileByDomain(filePath, currentDomains, idleExtension) {

    /*
      trend TMs (e.g. PISA_el-CY_MAT_MS2022.tmx.zip) are 
      considered against the domain of the current batch(es)
    */


    // get domain of the TMX file
    const tmxDomain = getDomain(filePath);

    if (fs.existsSync(filePath)) {
        // activate TM if it matches domain
        if (currentDomains.includes(tmxDomain) && filePath.endsWith(idleExtension)) {
            const newFilePath = filePath.replace(idleExtension, '');
            moveFile(filePath, newFilePath);
        // deactivate TM if it does not match domain
        } else if (!currentDomains.includes(tmxDomain) && !filePath.endsWith(idleExtension)) {
            const newFilePath = filePath + idleExtension;
            moveFile(filePath, newFilePath);
        // delete if the TM should not be used at all in any case
        } else if (disallowedDomains.includes(tmxDomain)) {
            deleteFile(filePath);
        }
    }
}

function sortStepTmxFileByBatch(filePath, batches, idleExtension) {

    /*
      @update: 2023-12-06

      new function not included in the previous version: 
      here, unlike in function sortTrendTmxFileByDomain, 
      prev/next step TMs (e.g. 01_COS_SCI-A_N.tmx) are considered 
      against the batch itself, not just the domain
    */

    // get filename
    const fileName = filePath.includes('/') ? filePath.split('/').pop() : filePath;
    // remove extensions
    // const basename = path.parse(fileName).name;
    const basename = fileName.split(".")[0];

    if (batches.includes(basename) && filePath.endsWith(idleExtension)) {
        // activate TM if it matches batch
        const newFilePath = filePath.replace(idleExtension, '');
        moveFile(filePath, newFilePath);
    } else if (!batches.includes(basename) && !filePath.endsWith(idleExtension)) {
        // deactivate TM if it does not match batch
        const newFilePath = filePath + idleExtension;
        moveFile(filePath, newFilePath);
    }
}

function getTmxFiles(tmDir, originDirs) {
    // get all TMX files for those origins
    const files = originDirs.map(originDir =>
        glob.sync(`${tmDir}/**/${originDir}/*.tmx*`, { recursive: true })
    );
    return files.flat();
}

function getMappedBatches(rootDirPath) {
    const settingsFile = path.join(rootDirPath, 'omegat.project');
    const content = fs.readFileSync(settingsFile, 'utf-8');
    const { window } = new JSDOM(content);

    // get the mappings from batch folders in the common repo > source folder
    const mappings = [...window.document.querySelectorAll('mapping[local^="source"]')];
    return mappings.map((mapping) => mapping.getAttribute('local').split('/')[1]);
}

function arrangeTmxFiles(tmDirPath) {
    // get the list of batches in mapped folders
    const batches = getMappedBatches(repo);
    // get the domains in the batches currently mapped
    const currentDomains = getBatchDomains(batches);
    // define the deactivating extension
    const idleExtension = '.idle';

    // Trend TMs
    const trendFiles = getTmxFiles(tmDirPath, ['trend']);
    trendFiles.forEach(tmxFile => {
        sortTrendTmxFileByDomain(tmxFile, currentDomains, idleExtension)
    });

    // Other steps
    const stepFiles = getTmxFiles(tmDirPath, ['prev', 'next']);
    stepFiles.forEach(tmxFile => {
        sortStepTmxFileByBatch(tmxFile, batches, idleExtension)
    });
}

// action

const disallowedDomains = ['CRT', 'XYZ', 'FLQ', 'FNL', 'WBQ'];
const allowedDomains = {
    QQS: ['STQ', 'STQ-UH', 'STQ-UO', 'ICQ'],
    QQA: ['SCQ', 'TCQ'],
    COS: ['MAT', 'REA', 'SCI'],
};

const rootDirPath = repo;
const tmDirPath = path.join(rootDirPath, 'tm');

arrangeTmxFiles(tmDirPath);