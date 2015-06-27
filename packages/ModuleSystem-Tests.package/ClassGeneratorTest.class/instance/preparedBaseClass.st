initializing
preparedBaseClass
	| spec |
	spec := ModuleSpecification new.
	spec addMethodString: 'do: aBlock { 2. 4. 1. 9. 1 } do: aBlock.' protocol: 'enumerating'.
	^ spec generateBasicModule 