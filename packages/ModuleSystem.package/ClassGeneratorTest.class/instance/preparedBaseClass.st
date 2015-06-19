initializing
preparedBaseClass
	| spec |
	spec := ClassSpecification new.
	spec addMethodString: 'do: aBlock { 2. 4. 1. 9. 1 } do: aBlock.' protocol: 'enumerating'.
	^ spec generateModule 