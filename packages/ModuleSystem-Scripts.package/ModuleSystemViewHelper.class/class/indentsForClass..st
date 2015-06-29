as yet unclassified
indentsForClass: classSpec
	^ (classSpec expectedSuperSpecs select: [ :spec | spec parent = classSpec parent ]) size