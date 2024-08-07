const fs = require('fs');
const path = require('path');
const glob = require('glob');
const { JSDOM } = require('jsdom');
const axios = require('axios');
const fetch = require('sync-fetch');

// Program Description
const appDesc = "Arrange TMs by batch or domain on batch transition";

// Parse command line arguments
const args = process.argv.slice(2);
let rootDirPath = '';
let version = false;
args.forEach(arg => {
    if (arg === '-V' || arg === '--version') {
        version = true;
    } else if (arg === '-r' || arg === '--repo') {
        rootDirPath = args[args.indexOf(arg) + 1];
    }
});

// Show version if requested
const versionText = `${appDesc} v. 0.2`;
if (version) {
    console.log(`versionText=${versionText}`);
    process.exit();
}

// Check if root directory path is provided
if (!rootDirPath) {
    console.log("Required argument not found. Run this script with parameter `-r /path/to/repo`.");
    process.exit();
}

// Constants
const disallowedDomains = ['CRT', 'FLQ', 'FNL', 'WBQ'];
const allowedDomains = {
    QQS: ['STQ', 'STQ-UH', 'STQ-UO', 'ICQ'],
    QQA: ['SCQ', 'TCQ', 'PAQ'],
    COS: ['MAT', 'REA', 'SCI'],
};
const trendTag = "MS2022";
const newTag = "FT2025";

const tmDirPath = path.join(rootDirPath, 'tm')

const idleExtension = '.idle';
const locales = getLocales();
const batches = ["01_COS_SCI-A_N", "02_COS_SCI-B_N", "03_COS_SCI-C_N", "04_QQS_N", "05_QQA_N", "06_COS_LDW_N", "07_COS_XYZ_N", "08_CGA_SCI_N", "11_COS_MAT-A_T", "12_COS_MAT-B_T", "13_COS_REA-A_T", "14_COS_REA-B_T", "15_COS_SCI-A_T", "16_COS_SCI-B_T", "17_CGA_SCI_T", "18_CGA_MAT_T", "19_CGA_REA_T", "21_COSP_REA-A_T", "22_COSP_REA-B_T", "23_COSP_MAT-A_T", "24_COSP_MAT-B_T", "25_COSP_SCI-A_N", "26_COSP_SCI-A_T", "27_QQSP_N", "28_QQAP_N", "29_COSP_XYZ_N", "30_CGAP_MAT_T", "31_CGAP_REA_T", "32_CGAP_SCI_T", "33_CGAP_SCI_N"]

// Helper functions
function removeSuffix(str, suffix) {
    if (str.endsWith(suffix)) {
        return str.slice(0, -suffix.length);
    }
    return str;
}

function removePrefix(str, prefix) {
    if (str.startsWith(prefix)) {
        return str.slice(prefix.length);
    }
    return str;
}

function getLocales() {
    const url = 'https://capps.capstan.be/langtags_json.php'
    const json = fetch(url, {}).json()
    return Object.values(json).map(entry => entry.BCP47) // object type
}

function searchFileInDirectories(dirPath, folders, filename) {
    // Searches for a file in specified directories
    for (const folder of folders) {
        const directory = path.join(dirPath, folder);
        if (fs.existsSync(directory)) {
            const files = fs.readdirSync(directory);
            if (files.includes(filename) || files.includes(`${filename}${idleExtension}`)) {
                return true;
            }
        }
    }
    return false;
}

function hasNewVersion(filePath, tmxDomain) {
    // Checks if there is a new version of a trend TMX file
    const filename = path.basename(filePath);
    if (filename.includes(trendTag) && filename.includes(tmxDomain)) {
        const newVersionFilename = filename.replace(trendTag, newTag).replace(idleExtension, '');
        const folders = ["tm/auto", "tm/enforce"];
        if (searchFileInDirectories(rootDirPath, folders, newVersionFilename)) {
            return true;
        }
    }
    return false;
}

function getDomain(file) {
    // Extracts the (dirty) domain from a file name; dirty = might contain prefixes/suffixes (CGA-, -New, etc.)
    const fileName = path.basename(file);
    const pattern = /\.tmx(\.zip)?(\.idle)?$/;
    if (fileName.startsWith('PISA_') && pattern.test(fileName)) {
        const tentativeDomain = fileName.split('_')[2];
        if (allowedDomains['QQS'].includes(tentativeDomain) || allowedDomains['QQA'].includes(tentativeDomain)) {
            return Object.keys(allowedDomains).find(key => allowedDomains[key].includes(tentativeDomain)) || null;
        }
        return tentativeDomain;
    } else {
        if (fileName.includes('_QQS_') || fileName.includes('_QQA_')) {
            return fileName.split('_')[1];
        } else if (fileName.includes('_QQSP_') || fileName.includes('_QQAP_')) {
            return removeSuffix(fileName.split('_')[1], "P")
        } else {
            const domain = fileName.split('_')[2];
            return domain.includes('-') ? domain.split('-')[0] : domain;
        }
    }
}

function deleteFile(file) {
    // Deletes a file
    console.log(`>>> Delete ${file.replace(rootDirPath, '')} !!!`);
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
    // Creates a directory
    try {
        fs.mkdirSync(dirPath, { recursive: true });
        console.log(`The folder ${dirPath} and any necessary ancestors in the path have been created.`);
    } catch (err) {
        console.log(`An error occurred: ${err.message}`);
    }
}

function moveFile(origPath, destPath) {
    // Renames file, adding or removing the idle extension
    console.log(`>>> Move ${origPath.replace(rootDirPath, '')} to ${destPath.replace(rootDirPath, '')} !!!`);
    const dirPath = path.dirname(destPath);
    createDir(dirPath);
    try {
        fs.renameSync(origPath, destPath);
        console.log(`The file ${path.basename(destPath)} has been successfully moved.`);
    } catch (err) {
        console.log(`An error occurred: ${err.message}`);
    }
}

function sortRefTmxFileByDomain(filePath, currentDomains) {
    // Sorts reference TMX files by domain
    const dirtyTmxDomain = getDomain(filePath);
    // @todo: refactor this part so that the output of the getDomain() function is already clean (see @strip_domain decorator in the python script)
    const tmxDomain = dirtyTmxDomain.replace("CGA-", "").replace("-New", "").replace("New", "").replace("-Trend", "").replace("Trend", "")

    if (fs.existsSync(filePath)) {
        if (hasNewVersion(filePath, tmxDomain)) {
            if (!filePath.endsWith(idleExtension)) {
                const newFilePath = `${filePath}${idleExtension}`;
                moveFile(filePath, newFilePath);
            }
        } else if (currentDomains.includes(tmxDomain) && filePath.endsWith(idleExtension)) {
            const newFilePath = filePath.replace(idleExtension, '');
            moveFile(filePath, newFilePath);
        } else if (!currentDomains.includes(tmxDomain) && !filePath.endsWith(idleExtension)) {
            const newFilePath = `${filePath}${idleExtension}`;
            moveFile(filePath, newFilePath);
        } else if (disallowedDomains.includes(tmxDomain)) {
            deleteFile(filePath);
        }
    }
}

function getBatchFromFilename(filePath) {
    /* const fileName = path.basename(filePath);
    const fileStem = fileName.split(".")[0];

    if (fileStem.split("_").some(x => locales.includes(x))) {
        // This is a base TM, hence remove language code
        return fileStem.split("_").slice(0, -1).join("_");
    }
    return fileStem; */
    const fileName = path.basename(filePath);
    return batches.filter(batch => fileName.includes(batch))[0];
}

function sortBatchTmxFileByBatch(filePath, batches) {
    // Sorts batch TMX files by batch
    const batch = getBatchFromFilename(filePath)

    if (batches.includes(batch) && filePath.endsWith(idleExtension)) {
        // Remove penalty
        const newFilePath = removeSuffix(filePath, idleExtension);
        moveFile(filePath, newFilePath);
    } else if (!batches.includes(batch) && !filePath.endsWith(idleExtension)) {
        // Add penalty
        const newFilePath = `${filePath}${idleExtension}`;
        moveFile(filePath, newFilePath);
    }
}

function getMappedBatches(rootDirPath) {
    // Retrieves mapped batches
    const settingsFile = path.join(rootDirPath, 'omegat.project');
    const content = fs.readFileSync(settingsFile, 'utf-8');
    const { window } = new JSDOM(content);

    // get the mappings from batch folders in the common repo > source folder
    const mappings = [...window.document.querySelectorAll('mapping[local^="source"]')];
    return mappings.map((mapping) => mapping.getAttribute('local').split('/')[1]);
}

function getBatchDomains(batches) {
    // Retrieves current domains
    return batches.map(getDomain);
}

function getTmxFiles(tmDir, originDirs) {
    // Retrieves TMX files
    const files = originDirs.map(originDir =>
        glob.sync(`${tmDir}/**/${originDir}/*.tmx*`, { recursive: true })
    );
    return files.flat();
}


// Main function
function arrangeTmxFiles(tmDirPath) {
    // Get mapped batches
    const batches = getMappedBatches(rootDirPath);
    // Get current domains
    const currentDomains = getBatchDomains(batches);

    // Trend TMs from previous cycle ('trend') and new TMs from current cycle (called 'ref')
    const refFiles = getTmxFiles(tmDirPath, ["trend", "ref"]);
    refFiles.forEach(tmxFile => {
        sortRefTmxFileByDomain(tmxFile, currentDomains);
    });

    // Batch TMs from previous/next steps + base TMs (also organized by batch) from other locales
    const batchFiles = getTmxFiles(tmDirPath, ["prev", "next", "base", "x-base"]);
    batchFiles.forEach(tmxFile => {
        sortBatchTmxFileByBatch(tmxFile, batches);
    });
}

// Run the main function
arrangeTmxFiles(tmDirPath);
