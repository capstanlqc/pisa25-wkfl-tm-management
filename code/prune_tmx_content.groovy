/* :name=Prune TM :description=Remove from TMX file entrie not found in a certain folder in the project
 *
 * @author	Manuel Souto Pico
 * @version	0.0.1
*/

/*
props = project.projectProperties
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
prunedEntries = []
project.transMemories.each { filepath, tmx -> 

	// tmx.entries is a list (more precisely: class java.util.Collections$UnmodifiableRandomAccessList)

	tmxFileName = tmx.getName().toString() // or
	// tmxFileName = new File(filepath).name
    tmxBaseName = tmxFileName.replace(".tmx", "")
	
    prunedEntries = tmx.entries.findAll{ entriesPerBatch[tmxBaseName].contains(it.source) }
    writeTMX(filepath, prunedEntries)
}

return