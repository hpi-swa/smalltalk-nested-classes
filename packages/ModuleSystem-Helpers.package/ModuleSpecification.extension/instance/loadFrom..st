*ModuleSystem-Helpers
loadFrom: aFileDirectory
	| module moduleName |
	moduleName := aFileDirectory pathParts last.
	module := ModuleSpecification newWithName: moduleName.
	module loadMethodsFrom: aFileDirectory.    
	module loadClassesFrom: aFileDirectory.
	