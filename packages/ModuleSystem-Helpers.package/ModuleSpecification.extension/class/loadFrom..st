*ModuleSystem-Helpers
loadFrom: aFileDirectory
	| module moduleName |
	moduleName := aFileDirectory pathParts last.
	module := ModuleSpecification newWithName: moduleName.
	self isImporting: true.  
	module loadFrom: aFileDirectory.
	self isImporting: false.  
	^ module