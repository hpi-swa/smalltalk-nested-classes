testing
testClassInOuterScopeWithSelfOuterSend
	| moduleSpec module2Spec nested1Spec nested2Spec module module2 nested1 X1spec X2spec |
	moduleSpec := ModuleSpecification new.
	moduleSpec theMetaClassSpecification addMethodString: 'X < class > ^ Object subclass' protocol: 'foo'.
	X1spec := moduleSpec theMetaClassSpecification classAt: #X.
	X1spec theMetaClassSpecification addMethodString: 'method ^ 10' protocol: 'foo'.  
	moduleSpec theMetaClassSpecification addMethodString: 'Nested1 < class > ^ Object subclass' protocol: 'foo'.
	nested1Spec := moduleSpec theMetaClassSpecification classAt: #Nested1.
	nested1Spec theMetaClassSpecification addMethodString: 'method ^ self outer X method' protocol: 'foo'.
	
	module := moduleSpec generateModule.
	nested1 := module Nested1.
	Smalltalk removeKey: #Nested186897657 ifAbsent: [ ].
	Smalltalk at: #Nested186897657 put: nested1.

	module2Spec := ModuleSpecification new.
	module2Spec theMetaClassSpecification addMethodString: 'X < class > ^ Object subclass' protocol: 'foo'.
	X2spec := module2Spec theMetaClassSpecification classAt: #X.
	X2spec theMetaClassSpecification addMethodString: 'method ^ 20' protocol: 'foo'.  
	module2Spec theMetaClassSpecification addMethodString: 'Nested2 < class > ^ Nested186897657 subclass' protocol: 'foo'.
	nested2Spec := module2Spec theMetaClassSpecification classAt: #Nested2.
	module2 := module2Spec generateModule.

	self assert: module X method equals: 10.
	self assert: module2 X method equals: 20.	
	self assert: module Nested1 method equals: 10.
	self assert: module2 Nested2 method equals: 20.

	Smalltalk removeKey: #Nested186897657.  