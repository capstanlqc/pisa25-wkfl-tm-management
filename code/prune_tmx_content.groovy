/* :name=Prune TM content :description=Removes unwanted entries

*/

props = project.projectProperties

files = project.projectFiles

sourceSegments = []

files.each { fi -> 
	def sourceSegmentsInFiles = fi.entries.collect {
		it.getSrcText()
	}
	sourceSegments.addAll(sourceSegmentsInFiles)
}

project.transMemories.each { filepath, tmx -> 
    // filename = filepath.substring(props.getTMRoot().length())
    prunedEntries = tmx.entries.findAll{ sourceSegments.contains(it.source) }    

    // writeTMX(filepath, prunedEntries)
}

prunedEntries.each {
	console.println(it.source)
}





return