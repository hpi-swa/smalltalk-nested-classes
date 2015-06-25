testing
testMultipleInstantiationInNonSuper
	| spec spec2 nestedSpec nestedSpec2 cls cls2 myB |
	spec := ClassSpecification new.
	spec theMetaClassSpecification addMethodString: 'B < class > ^ Object subclass' protocol: 'foo'.
	nestedSpec := spec theMetaClassSpecification classAt: #B.
	nestedSpec theMetaClassSpecification addMethodString: 'method ^ 10' protocol: 'foo'.

	cls := spec generateModule.
	myB := cls B.
	Smalltalk removeKey: #MyB7656890 ifAbsent: [ ].
	Smalltalk at: #MyB7656890 put: myB.

	spec2 := ClassSpecification new.
	spec2 theMetaClassSpecification addMethodString: 'B2 < class > ^ MyB7656890' protocol: 'foo'. 
	nestedSpec2 := spec2 theMetaClassSpecification classAt: #B2.
	nestedSpec2 theMetaClassSpecification addMethodString: 'method ^ 20' protocol: 'foo'.
	
	self should: [ cls2 := spec2 generateModule ] raise: Error.
	self assert: myB method equals: 10.

	Smalltalk removeKey: #MyB7656890.