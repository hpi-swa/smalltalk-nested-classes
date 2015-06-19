initializing
preparedSpecNestedMeta
	| module classNested |
	module := ClassSpecification new.

	module theMetaClassSpecification addMethodString: 'ANested < class > ^ Object subclass' protocol: 'foo'.	
	classNested := module theMetaClassSpecification classDict at: #ANested.
	classNested theMetaClassSpecification addMethodString: 'classMethod ^ 3' protocol: 'foo'.
	classNested addMethodString: 'instMethod ^ 4' protocol: 'foo'.

	module theMetaClassSpecification addMethodString: 'BNested < class > ^ Object subclass' protocol: 'foo'.	
	classNested := module theMetaClassSpecification classDict at: #BNested.
	classNested theMetaClassSpecification addMethodString: 'classMethod1 ^ ANested classMethod' protocol: 'foo'.
	classNested theMetaClassSpecification addMethodString: 'classMethod2 ^ ANested new instMethod. ' protocol: 'foo'.

	module theMetaClassSpecification addMethodString: 'classMethod3 ^ ANested classMethod' protocol: 'foo'.
	module theMetaClassSpecification addMethodString: 'classMethod4 ^ ANested new instMethod' protocol: 'foo'.

	^ module