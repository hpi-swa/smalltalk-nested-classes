testing
testClassInOuterScopeEarlyBoundFromInstSide
	| spec bSpec dSpec cSpec |
	spec := ModuleSpecification new.
	spec theMetaClassSpecification addMethodString: 'B < class > ^ Object subclass' protocol: 'foo'.
	bSpec := spec theMetaClassSpecification classAt: #B.
	spec theMetaClassSpecification addMethodString: 'D < class > ^ Object subclass' protocol: 'foo'.
	dSpec := spec theMetaClassSpecification classAt: #D.
	bSpec addMethodString: 'C < class > ^ Object subclass' protocol: 'foo'.
	cSpec := bSpec classAt: #C.
	cSpec theMetaClassSpecification addMethodString: 'method ^ D meth' protocol: 'foo'.
	dSpec theMetaClassSpecification addMethodString: 'meth ^ 10' protocol: 'foo'.
	
	self assert: spec generateModule B new C method equals: 10.