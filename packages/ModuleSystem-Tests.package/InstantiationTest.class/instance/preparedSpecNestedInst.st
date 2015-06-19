initializing
preparedSpecNestedInst
	| module classNested |
	module := ClassSpecification new.

	module addMethodString: 'ANested < class > ^ Object subclass' protocol: 'foo'.	
	classNested := module  classDict at: #ANested.
	classNested theMetaClassSpecification addMethodString: 'classMethod ^ 3' protocol: 'foo'.
	classNested addMethodString: 'instMethod ^ 4' protocol: 'foo'.

	module addMethodString: 'BNested < class > ^ Object subclass' protocol: 'foo'.	
	classNested := module classDict at: #BNested.
	classNested theMetaClassSpecification addMethodString: 'classMethod1 ^ ANested classMethod' protocol: 'foo'.
	classNested theMetaClassSpecification addMethodString: 'classMethod2 ^ ANested new instMethod. ' protocol: 'foo'.

	module addMethodString: 'instMethod1 ^ ANested classMethod' protocol: 'foo'.
	module addMethodString: 'instMethod2 ^ ANested new instMethod' protocol: 'foo'.

	^ module