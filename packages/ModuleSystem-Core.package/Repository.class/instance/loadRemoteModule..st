modifying
loadRemoteModule: aModuleName
	| module |
	module := ModuleSpecification getRemote: aModuleName.
	module ifNotNil: [ self addSpec: module ]