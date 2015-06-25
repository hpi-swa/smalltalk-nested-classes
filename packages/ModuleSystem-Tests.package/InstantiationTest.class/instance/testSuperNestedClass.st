testing
testSuperNestedClass
	| spec spec2 nestedSpec nestedSpec2 cls cls2 |
	spec := ModuleSpecification new.
	spec theMetaClassSpecification addMethodString: 'B < class > ^ Object subclass' protocol: 'foo'.
	nestedSpec := spec theMetaClassSpecification classAt: #B.
	nestedSpec theMetaClassSpecification addMethodString: 'method ^ 10' protocol: 'foo'.

	spec2 := ModuleSpecification new.
	spec2 theMetaClassSpecification addMethodString: 'B < class > ^ super B' protocol: 'foo'. 
	nestedSpec2 := spec2 theMetaClassSpecification classAt: #B.
	nestedSpec2 theMetaClassSpecification addMethodString: 'method ^ 20' protocol: 'foo'.
	
	cls := spec generateModule.
	cls2 := spec2 generateWithSubclass: cls.

	self assert: cls B method equals: 10.
	self assert: cls2 B method equals: 20.    