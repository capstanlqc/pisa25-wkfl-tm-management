/* :name=Prune TMX files (on Load) :description=Removes extra files from directory mappings
 *
 * @author  Briac Pilpre, Manuel Souto
 * @date    2020-05-12 (creation)
 * @date    2023-01-04 (modification: remove gui and add event type
 * @date    2023-07-17 (modification: make dir generic to accept source, tm, etc.
 * @version 0.3
*/

import static org.omegat.core.events.IProjectEventListener.PROJECT_CHANGE_TYPE.*
import static javax.swing.JOptionPane.*
import static org.omegat.util.Platform.*
import org.omegat.core.Core;
import org.omegat.util.FileUtil;
import org.apache.commons.io.FileUtils;
import java.nio.file.Path;
import gen.core.project.RepositoryDefinition;
import gen.core.project.RepositoryMapping;
import org.omegat.core.team2.RemoteRepositoryProvider;
import groovy.io.FileType
import org.omegat.util.StaticUtils


def arrangeTMXs(props, String dir) throws Exception {

	sourceDirPath = props.getSourceRoot()
	console.println("props.getSourceRoot() has type : " + sourceDirPath.getClass())
	localDir = props.getSourceDir().getAsFile()
	console.println("props.getSourceDir().getAsFile() has type : " + localDir.getClass())
	localDir2 = props.getSourceDir()
	console.println("props.getSourceDir() has type : " + localDir2.getClass())

	projectRoot = props.projectRootDir
	tmDirPath = props.getTMRoot()

	// get the list of batches currently added to the project
	// batches = listSubDirs(sourceDirPath)
	batches = getSourceFilesInRepo()

	batches.each { it -> 
		console.println("batch: ${it}")
	}

	// batchesZ = getBatchFolders(remoteFiles)

	// get the list of tmx files added to the tm folder
	tmxFiles = listFiles(tmDirPath)
	tmxFiles.each { it -> 
		console.println("tmx file: ${it}")
	}


	// console.println("List ${tmxFiles} contains ${tmxFiles.size()} files")
	// 244:         dir.deleteDir()

	domainsUnwanted = ["CRT", "XYZ", "FLQ", "FNL", "WBQ"]
	// delete tmx files that do not match the batch
	domains = [
		"QQS": ["STQ", "STQ-UH", "STQ-UO", "ICQ"],
		"QQA": ["SCQ", "TCQ"],
		"COS": ["MAT", "REA", "SCI"]
	]
	// batches = ["01_COS_SCI-A_N", "02_COS_SCI-B_N", "03_COS_SCI-C_N", "04_QQS_N", "05_QQA_N", "06_COS_LDW_N", "07_COS_XYZ_N", "08_CGA_SCI_N",
    // 	"11_COS_MAT-A_T", "12_COS_MAT-B_T", "13_COS_REA-A_T", "14_COS_REA-B_T", "15_COS_SCI-A_T", "16_COS_SCI-B_T", "17_CGA_SCI_T", "18_CGA_MAT_T", 
	//	"19_CGA_REA_T", "21_COSP_REA-A_T", "22_COSP_REA-B_T", "23_COSP_MAT-A_T", "24_COSP_MAT-B_T", "25_COSP_SCI-A_N", "26_COSP_SCI-A_T"]

	wantedDomains = getBatchDomains(batches)
	wantedDomains.each { it -> 
		console.println("wanted domain: ${it}")
	}

	hasChanged = false
	tmxFiles.each { file ->
		activateWantedTMX(file)
	}

	// if (hasChanged && eventType == LOAD) {
	// 	reloadProjectOnetime()
	// 	// org.omegat.gui.main.ProjectUICommands.projectReload();
	// }	
}

def quiesceTMXs(pros) {
	tmDirPath = props.getTMRoot()
	tmxFiles = listFiles(tmDirPath)
	tmxFiles.each { file ->
		activateWantedTMX(file)
	}
}


def getBatchFolders(remoteFiles) {
	def l = []
	remoteFiles.each { path ->
		if (path.contains("/")) {
			parentDir = path.split("/")[0]
			l << parentDir			
		}
	}
	return l.unique() // remove duplicates
}


def getBatchDomains(batches) {
	l = []
	batches.each { it -> 
		l << getDomain(it)
	}
	return l.unique()
}

def getDomain(f) {
	// assuming f is a string (file or folder)

	console.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~")
	// console.println("::: Get domain of '${f}'")

	// get filename if it's not already
	def fileName = (f.getClass() == java.io.File) ?  f.getName() : f

	// console.println("::: Filename is '${fileName}'")

	if ( fileName.startsWith("PISA_") && ( fileName.contains("tmx") || fileName.contains("tmx.zip") )) {
		// console.println("::: ${fileName} is a TM")
		tentativeDomain = fileName.split("_")[2]
		
		// console.println("::: tentativeDomain is ${tentativeDomain}")
		if (tentativeDomain.endsWith("Q")) {
			// console.println("::: ${fileName} is a QQ TM")
			def result = domains.find { entry ->
			    entry.value.contains(tentativeDomain)
			}
			if (result != null) {
				// console.println("::: domain is ${result.key}")
				domain = result.key
				return domain
			}
		}
		return tentativeDomain.split("-")[0] // else
	} else {
		// console.println(">>> ${fileName} is a batch")
		
		// or if list of splitted parts is 3 or 4
		if (fileName.contains("_QQS_") || fileName.contains("_QQA_")) {
			// console.println("::: ${fileName} is a QQ batch")
			fileComponent = fileName.split("_")[1] // component 
			// console.println(";;; fileComponent of ${fileName} is ${fileComponent}")
			// it's a questionnaires batch
			return fileComponent
		} else {
			// console.println(";;; ${fileName} is a COG batch")
			def fileDomain = fileName.split("_")[2].split("-")[0]
			return fileDomain
		}
	}
}

def activateWantedTMX(file) {

	// console.println("::: Check whether file ${file} has a wanted domain")
	def tmxDomain = getDomain(file)
	console.println("-----------------")
	console.println(">>> tmxDomain: ${tmxDomain}")
	wantedDomains.each {
		console.println(">>> wantedDomain: ${it}")
	}
	// console.println("::: File ${file}'s domain is ${x}")
	if (wantedDomains.contains(tmxDomain)) {
		console.println(">>> Activate ${file} !!!")
		try {
			// new File(parentDirAbsPath, fileName).delete()
			// file.delete() 
			def newName = file.toString().replaceFirst(/\.x$/, '')
			def newFile = new File(newName)
			file.renameTo(newFile)
			hasChanged = true;
		} catch (Exception e) {
			console.println(e);
		}
	}
}




def listFiles(tmDir) {
	def list = []
	def dir = new File(tmDir)
	dir.eachFileRecurse (FileType.FILES) { file ->
		
		// fileName = file.toString()
		fileName = file.getName()
		
		console.println("type of fileName: ${fileName.getClass()}")
		console.println(">>> CONSIDERING file ${fileName} !!!")

		// for batches: fileName ==~ /^\d{2}_(QQ[SA]|(COSP?|CGA)_(LDW|XYZ|REA|MAT|SCI)(-[ABC])?)_[NT].tmx(\.zip)?(\.x)?$/ || 
		if (fileName ==~ /^PISA.*MS2022.tmx(\.zip)?(\.x)?$/) {
			list << file
		}
	}
	return list
}

def listSubDirs(dir) {
	dlist = []
	new File(dir).eachDir {dlist << it.name }
	// #todo: check that they are not empty
	return dlist.sort().flatten()
}


def getRepositoryDir(projectRoot, repo) {
	def path = repo.getUrl().replaceAll("[^A-Za-z0-9\\.]", "_").replaceAll("__+", "_");
	return new File(new File(projectRoot, RemoteRepositoryProvider.REPO_SUBDIR), path);
}

def withoutLeadingSlash(s) {
	return s.startsWith("/") ? s.substring(1) : s;
}


def getSourceFilesInRepo() {
	batchesX = []
	List<String> remoteFiles = new ArrayList<String>()
	for (def repoDefinition in props.repositories) {
		console.println("repoDefinition: " + repoDefinition)
		def repositoryDir = getRepositoryDir(projectRoot, repoDefinition);
		console.println("repositoryDir: " + repositoryDir)

		// x = repoDefinition.getMapping() // type class java.util.ArrayList

		// batchesZ = repoDefinition.getMapping().findAll { it.getLocal().startsWith("source")).split("/")[1] }
		batchesZ = repoDefinition.getMapping().findAll { it.getLocal().startsWith("source") }
                  .collect { it.getLocal().split("/")[1] }
	}
	return batchesZ
}


def skipSync(eventType) {
    if (!eventType.metaClass.hasProperty(eventType, 'skipSync')) {
        eventType.metaClass.skipSync = false
    }
    eventType.skipSync
}


def reloadProjectOnetime() {
    LOAD.skipSync = true    // avoid potentially infinity reloading loop
    javax.swing.SwingUtilities.invokeLater({
        org.omegat.gui.main.ProjectUICommands.projectReload()
    } as Runnable)
}


// logic
props = project.projectProperties

switch (eventType) {
    case LOAD:
        // Skip traverse
        if (skipSync(LOAD)) {
			LOAD.skipSync = false // reset the flag
			return
        }

		VERBOSE = true;

		// abort if a team project is not opened
		props = project.projectProperties
		if (!props) { //  || !props.repositories
	    	final def title = 'TM Pruning';
	    	// @todo: does this actually check that the project is a team project?
	    	final def msg = 'No team project opened.';
	    	showMessageDialog(null, msg, title, INFORMATION_MESSAGE);
	    	return;
	    }

	    /**/
	    config_dir = StaticUtils.getConfigDir()
		console.println("config_dir: " + config_dir)
		def currentProjectFile = new File(config_dir.toString() + File.separator + "script" + File.separator + 'current_project_path.txt')
		String projectRoot = props.projectRootDir
		currentProjectFile.write(projectRoot)


		arrangeTMXs(props, dir = "tm")
		console.println("TMX files arranged now.")

		break

	case CLOSE:

		/**/
		config_dir = StaticUtils.getConfigDir()
		console.println("config_dir: " + config_dir)
		// unable to access props

		// props = project.projectProperties
		// // deactivate all TMX files on CLOSE
		// quiesceTMXs(props)
		// console.println("TMX files quiesced now.")

        break
    default:
        return null // No output
}
