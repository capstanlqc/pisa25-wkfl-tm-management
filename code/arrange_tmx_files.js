const fs = require('fs');
const path = require('path');
const glob = require('glob');
const cheerio = require('cheerio');

// unique argument: path to the repo root folder
const repo = process.argv.slice(2)[0];

function getBatchDomains(batches) {
    // get domain of the batch
    return batches.map(getDomain);
}

function getDomain(file) {
    // get the name of this file or folder
    const fileName = file.includes('/') ? file.split('/').pop() : file;

    // find the domain depending on whether it is a batch TM or batch folder or a trend TM
    if (fileName.startsWith('PISA_') && (fileName.endsWith('tmx') || fileName.endsWith('tmx.zip'))) {
        const tentativeDomain = fileName.split('_')[2];
        if (allowedDomains['QQS'].includes(tentativeDomain) || allowedDomains['QQA'].includes(tentativeDomain)) {
            return Object.keys(allowedDomains).find(key => allowedDomains[key].includes(tentativeDomain));
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
            console.error(`An error occurred: ${err}`);
        }
    }
}

function createDir(dirPath) {
    try {
        fs.mkdirSync(dirPath, { recursive: true });
        console.log(`The folder ${dirPath} and any necessary ancestors in the path have been created.`);
    } catch (err) {
        console.log(`An error occurred: ${err}`);
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
        console.log(`An error occurred: ${err}`);
    }
}

function sortTmxFile(filePath, currentDomains, penaltyDir = 'penalty-05') {
    // get domain of the TMX file
    const tmxDomain = getDomain(filePath);

    if (fs.existsSync(filePath)) {
        // lift if the TM must be activated
        if (currentDomains.includes(tmxDomain) && filePath.includes(penaltyDir)) {
            const newFilePath = filePath.replace(`/${penaltyDir}/`, '/');
            moveFile(filePath, newFilePath);
        // drop if the TM must be deactivated
        } else if (!currentDomains.includes(tmxDomain) && !filePath.includes(penaltyDir)) {
            const newFilePath = filePath.replace('tm/', `tm/${penaltyDir}/`);
            moveFile(filePath, newFilePath);
        // delete if the TM should not be used at all in any case
        } else if (disallowedDomains.includes(tmxDomain)) {
            deleteFile(filePath);
        }
    }
}

function getTmxFiles(tmDir) {
    // these are the parent origin folders we care about
    const originDirs = ['trend', 'prev', 'next'];
    // get all TMX files for those origins
    const files = originDirs.map(originDir =>
        glob.sync(`${tmDir}/**/${originDir}/*.tmx*`, { recursive: true })
    );
    return [].concat(...files);
}

function getMappedBatches(rootDirPath) {
    const settingsFile = path.join(rootDirPath, 'omegat.project');
    const content = fs.readFileSync(settingsFile, 'utf8');
    const $ = cheerio.load(content);

    // get the mappings from batch folders in the common repo > source folder
    const mappings = $('mapping[local^="source"]');
    // get the child folder under source
    return mappings.map((_, repo) => repo.attribs.local.split('/')[1]).get();
}

function arrangeTmxFiles(tmDirPath) {
    // get the list of batches in mapped folders
    const batches = getMappedBatches(repo);
    // get the domains in the batches currently mapped
    const currentDomains = getBatchDomains(batches);
    // set the penalty
    const penaltyDir = 'penalty-05';

    const tmxFiles = getTmxFiles(tmDirPath);

    tmxFiles.forEach(tmxFile => {
        // move the TMX file to the expected location depending on current batch(es)
        sortTmxFile(tmxFile, currentDomains, penaltyDir);
    });
}

// action 

const disallowedDomains = ['CRT', 'XYZ', 'FLQ', 'FNL', 'WBQ'];
const allowedDomains = {
    'QQS': ['STQ', 'STQ-UH', 'STQ-UO', 'ICQ'],
    'QQA': ['SCQ', 'TCQ'],
    'COS': ['MAT', 'REA', 'SCI']
};

const rootDirPath = repo;
const tmDirPath = path.join(rootDirPath, 'tm');

arrangeTmxFiles(tmDirPath);