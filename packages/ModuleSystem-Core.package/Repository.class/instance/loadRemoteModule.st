modifying
loadRemoteModule
	| module |
	module := ModuleSpecification getLocal.
	module ifNotNil: [ self addSpec: module ]