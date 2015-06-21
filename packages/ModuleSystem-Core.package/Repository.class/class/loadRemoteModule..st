loading
loadRemoteModule: aModuleName
	| module |
	module := ModuleSpecification getRemote: aModuleName.
	module ifNotNil: [ self add: module ]
	