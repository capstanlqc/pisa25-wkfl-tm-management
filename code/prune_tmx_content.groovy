/* :name=Prune TM :description=Remove from TMX file entrie not found in a certain folder in the project
 *
 * @author	Manuel Souto Pico
 * @version	0.0.1
*/

/* import org.omegat.util.TMXWriter2 */
import org.omegat.util.TMXWriter

props = project.projectProperties

/*
files = project.projectFiles

sourceSegments = []
files.each { file -> 

	// get parentFolder of file (=batch)
	// use SrcText as key and parentFolder as value in sourceSegments (map)

	def sourceSegmentsInFiles = file.entries.collect {
		it.getSrcText()
	}
	sourceSegments.addAll(sourceSegmentsInFiles)
}
*/

// collect batch and source text for all segments in all released batches
entriesPerBatch = [:]
project.allEntries.each { ste ->

	// def source = ste.getProperties().toString()

	def sourceText = ste.getSrcText()
	def batch = ste.key.file.split("/")[0]
	if (entriesPerBatch[batch]) {
    	entriesPerBatch[batch].add(sourceText)
	} else {
		entriesPerBatch[batch] = []
		entriesPerBatch[batch].add(sourceText)
	}
}

console.println("entriesPerBatch: ${entriesPerBatch}")

// collect all source texts in every batch TM
project.transMemories.each { filepath, tmx -> 

	// tmx.entries is a list (more precisely: class java.util.Collections$UnmodifiableRandomAccessList)

	tmxFileName = tmx.getName().toString() // or
	// tmxFileName = new File(filepath).name
    tmxBaseName = tmxFileName.replace(".tmx", "")
	
    def prunedEntries = tmx.entries.findAll{ entriesPerBatch[tmxBaseName].contains(it.source) }

    /*
     * Won't work in CapStan OmegaT because writer2 only accepts project-save entries
     * (this has been changed in OmegaT 5.8)
    def writer = new TMXWriter2(filepath + ".tmp", props.sourceLanguage, props.targetLanguage,
		props.isSentenceSegmentingEnabled(), false, false)
	prunedEntries.each { entry ->
		
		// writer.writeEntry(entry.source, entry.translation, entry, propValues)
	}
	*/
	
	// solution with old class TMXWriter
	def data = new java.util.HashMap<String, org.omegat.core.data.PrepareTMXEntry>() 
	prunedEntries.each { entry -> data[entry.source] = entry }
	def destTmp = new File(filepath).path + ".tmp"
	TMXWriter.buildTMXFile(destTmp, false, false, props, data)
	def destFinal = new File(filepath)
	destFinal.delete(); new File(destTmp).renameTo(destFinal)
}

return