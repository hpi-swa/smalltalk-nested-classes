loading
loadLocalModule
	| module |
	module := ModuleSpecification getLocal.
	module ifNotNil: [ self add: module ]
	