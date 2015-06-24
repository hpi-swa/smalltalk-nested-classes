managing
newModule: aString
	| module |
	module := ModuleSpecification new.
	module moduleName: aString.
	self add: module.
	^ module