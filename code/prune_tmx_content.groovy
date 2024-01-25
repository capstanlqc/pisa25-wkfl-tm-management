/* :name=Prune batch TMs :description=Remove from TMX file entrie not found in a certain folder in the project
 *
 * @author	Manuel Souto Pico, Thomas Cordonnier
 * @version	1.0.0
*/

import org.omegat.util.TMXWriter2 

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

    def writer = new TMXWriter2(new java.io.File(filepath + ".tmp"),
		props.sourceLanguage, props.targetLanguage,
		props.isSentenceSegmentingEnabled(), false, false)
	prunedEntries.each { entry ->
		def propValues = new java.util.ArrayList<String>()
		for (org.omegat.util.TMXProp p: entry.otherProperties) {
			if (p.getType().contains("Language")) continue;
			propValues.add(p.getType()); propValues.add(p.getValue());
		}

		// method with lot of parameters is the only one common between OmegaT 5.7 and later versions
		writer.writeEntry(entry.source, entry.translation, entry.note, entry.creator, entry.creationDate,
            entry.changer, entry.changeDate, propValues)
	}
	writer.close()
	
	def destFinal = new File(filepath)
	def destTmp = new File(filepath).path + ".tmp"
	destFinal.delete(); new File(destTmp).renameTo(destFinal)
	
}

return