example
example1
	| module classNested instNested |
	module := ClassSpecification new.
	module theMetaClassSpecification addMethodString: 'classMethod ^ 1' protocol: 'foo'.
	module addMethodString: 'instMethod ^ 2' protocol: 'foo'.

	module theMetaClassSpecification addMethodString: 'ClassNested < class > ^ Object subclass' protocol: 'foo'.	
	classNested := module theMetaClassSpecification classDict at: #ClassNested.
	classNested theMetaClassSpecification addMethodString: 'classMethod ^ 3' protocol: 'foo'.
	classNested addMethodString: 'instMethod ^ 4' protocol: 'foo'.

	module addMethodString: 'InstNested < class > ^ Object subclass' protocol: 'foo'.
	instNested := module classDict at: #InstNested.
	instNested addMethodString: 'instMethod ^ 5' protocol: 'foo'.
	instNested theMetaClassSpecification addMethodString: 'classMethod ^ 6' protocol: 'foo'.

	^ module