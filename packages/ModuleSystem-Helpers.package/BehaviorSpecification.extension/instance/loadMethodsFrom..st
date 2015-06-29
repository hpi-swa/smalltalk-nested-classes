*ModuleSystem-Helpers
loadMethodsFrom: aFileDirectory
	aFileDirectory fileNames do: [:file |
		(file endsWith: '.st') ifTrue: [ 
			self addMethodString: ((aFileDirectory fileNamed: file) contents) protocol: 'foo' ] ]