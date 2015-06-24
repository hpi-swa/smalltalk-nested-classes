modifying
newSpec: aString
	| module |
	module := ModuleSpecification new.
	module moduleName: aString.
	self addSpec: module.
	^ module