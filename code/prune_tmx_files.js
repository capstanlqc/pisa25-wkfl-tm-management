const fs = require('fs');
const path = require('path');
const glob = require('glob');
const cheerio = require('cheerio');

// unique argument: path to the repo root folder
const repo = process.argv.slice(2)[0];

function getBatchDomains(batches) {
    return batches.map(getDomain);
}

function getDomain(file) {
    const fileName = file.includes('/') ? file.split('/').pop() : file;

    if (fileName.startsWith('PISA_') && (fileName.endsWith('tmx') || fileName.endsWith('tmx.zip'))) {
        const tentativeDomain = fileName.split('_')[2];
        if (domains['QQS'].includes(tentativeDomain) || domains['QQA'].includes(tentativeDomain)) {
            return Object.keys(domains).find(key => domains[key].includes(tentativeDomain)) || null;
        }
        return tentativeDomain;
    } else {
        if (fileName.includes('_QQS_') || fileName.includes('_QQA_')) {
            return fileName.split('_')[1];
        } else {
            return fileName.split('_')[2].split('-')[0];
        }
    }
}

function deleteUnwantedTmx(file, allowedDomains) {
    const tmxDomain = getDomain(file);
    console.log(`tmx_domain=${tmxDomain}`);
    console.log(`allowed_domains=${allowedDomains}`);
    
    if (!allowedDomains.includes(tmxDomain)) {
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
}

function getTmxFiles(tmDir) {
    return glob.sync(`${tmDir}/**/PISA*_MS2022.tmx*`, { nodir: true, dot: true, absolute: true });
}

function getMappedBatches(rootDirPath) {
    const settingsFile = path.join(rootDirPath, 'omegat.project');
    const content = fs.readFileSync(settingsFile, 'utf8');
    const $ = cheerio.load(content);

    const repositories = $('mapping[local^="source"]');
    return repositories.map((_, repo) => repo.attribs.local.split('/')[1]).get();
}

function pruneTmxFiles(tmDirPath) {
    const batches = getMappedBatches(rootDirPath);
    const allowedDomains = getBatchDomains(batches);

    const tmxFiles = getTmxFiles(tmDirPath);
    tmxFiles.forEach(tmxFile => deleteUnwantedTmx(tmxFile, allowedDomains));
}

// main logic

const disallowedDomains = ['CRT', 'XYZ', 'FLQ', 'FNL', 'WBQ'];
const domains = {
    'QQS': ['STQ', 'STQ-UH', 'STQ-UO', 'ICQ'],
    'QQA': ['SCQ', 'TCQ'],
    'COS': ['MAT', 'REA', 'SCI'],
};

const rootDirPath = repo;
const sourceDirPath = path.join(rootDirPath, 'source');
const tmDirPath = path.join(rootDirPath, 'tm');

pruneTmxFiles(tmDirPath);
