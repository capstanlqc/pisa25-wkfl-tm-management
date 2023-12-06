/* like v1 but using xml2js and re instead of cheerio to extract relevant repository mappings */ 

const fs = require('fs');
const path = require('path');
const { parseString } = require('xml2js');
const glob = require('glob');

// unique argument: path to the repo root folder
const repo = process.argv.slice(2)[0];

function getBatchDomains(batches) {
    return batches.map(getDomain);
}

function getDomain(file) {
    const fileName = file.includes('/') ? file.split('/').pop() : file;

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

function sortTmxFile(filePath, currentDomains, penaltyDir = 'penalty-100') {
    const tmxDomain = getDomain(filePath);

    if (fs.existsSync(filePath)) {
        if (currentDomains.includes(tmxDomain) && filePath.includes(penaltyDir)) {
            const newFilePath = filePath.replace(`/${penaltyDir}/`, '/');
            moveFile(filePath, newFilePath);
        } else if (!currentDomains.includes(tmxDomain) && !filePath.includes(penaltyDir)) {
            const newFilePath = filePath.replace('tm/', `tm/${penaltyDir}/`);
            moveFile(filePath, newFilePath);
        } else if (disallowedDomains.includes(tmxDomain)) {
            deleteFile(filePath);
        }
    }
}

function getTmxFiles(tmDir) {
    const originDirs = ['trend', 'prev', 'next'];
    const files = originDirs.map(originDir =>
        glob.sync(`${tmDir}/**/${originDir}/*.tmx*`, { recursive: true })
    );
    return [].concat(...files);
}

function getMappedBatches(rootDirPath) {
    const settingsFile = path.join(rootDirPath, 'omegat.project');
    const content = fs.readFileSync(settingsFile, 'utf8');
    const batches = content.match(/(?<=<mapping local="source\/).*?(?=")/g) || [];
    // return repos.map(repo => repo.split('/')[1]);
    return batches;
}

function arrangeTmxFiles(tmDirPath) {
    const batches = getMappedBatches(repo);
    const currentDomains = getBatchDomains(batches);
    const penaltyDir = 'penalty-100';

    const tmxFiles = getTmxFiles(tmDirPath);

    tmxFiles.forEach(tmxFile => {
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