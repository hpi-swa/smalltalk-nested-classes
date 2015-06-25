*ModuleSystem-Helpers
loadMethodsFrom: aFileDirectory
	aFileDirectory fileNames do: [:file |
		self addMethodString: ((aFileDirectory fileNamed: file) contents) protocol: 'foo' ]