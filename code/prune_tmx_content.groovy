/* :name=Prune TM content :description=Removes unwanted entries

*/




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

project.transMemories.each { filepath, tmx -> 

	tmxFileName = tmx.getName().toString() // or
	// tmxFileName = new File(filepath).name
    tmxBaseName = tmxFileName.replace(".tmx", "")
	console.println(tmxBaseName)

    prunedEntries = tmx.entries.findAll{ sourceSegments.contains(it.source) }
    // and tmxBaseName == parentFolder of file containing the sourceSegment

    // writeTMX(filepath, prunedEntries)
}


return