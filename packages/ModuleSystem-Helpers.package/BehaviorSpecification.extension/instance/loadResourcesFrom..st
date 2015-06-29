*ModuleSystem-Helpers
loadResourcesFrom: aFileDirectory
	self methodDict keysAndValuesDo: [ :selector :object | | method |
		method := self methodAt: selector.
		method isResource ifTrue: [ | classSource importClass stream |
			classSource := (RBParser parseMethod: (self methodAt: selector) source)
				basicSelector: '';
				pragmas: #();
				newSource.
			importClass := Compiler new evaluate: classSource. 
			stream := aFileDirectory readOnlyFileNamed: method selector asString, '.res'.
			self resourceDict at: method selector put: (importClass newFromStream: stream).
			stream close ] ].