*ModuleSystem-Helpers
exportResourcesTo: aFileDirectory
	self resourceDict keysAndValuesDo: [ :selector :object | | stream |
		stream := aFileDirectory fileNamed: selector asString, '.res'.
		object writeResourceTo: stream.
		[ stream flush.
			stream close ] on: Error do: [ :ex | ] ].