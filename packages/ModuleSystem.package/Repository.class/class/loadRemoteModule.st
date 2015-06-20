managing
loadRemoteModule
	| module |
	module := ModuleSpecification getLocal.
	module ifNotNil: [ self add: module ]
	