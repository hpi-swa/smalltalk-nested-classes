testing
testOuterInSuper
	| moduleSpec module2Spec nested1Spec nested2Spec module module2 nested1 |
	moduleSpec := ModuleSpecification new.
	moduleSpec theMetaClassSpecification addMethodString: 'method ^ 10' protocol: 'foo'.
	moduleSpec theMetaClassSpecification addMethodString: 'Nested1 < class > ^ Object subclass' protocol: 'foo'.
	nested1Spec := moduleSpec theMetaClassSpecification classAt: #Nested1.
	nested1Spec theMetaClassSpecification addMethodString: 'method ^ outer method' protocol: 'foo'.
	
	module := moduleSpec generateModule.
	nested1 := module Nested1.
	Smalltalk removeKey: #Nested186897657 ifAbsent: [ ].
	Smalltalk at: #Nested186897657 put: nested1.

	module2Spec := ModuleSpecification new.
	module2Spec theMetaClassSpecification addMethodString: 'method ^ 20' protocol: 'foo'.
	module2Spec theMetaClassSpecification addMethodString: 'Nested2 < class > ^ Nested186897657 subclass' protocol: 'foo'.
	nested2Spec := module2Spec theMetaClassSpecification classAt: #Nested2.
	nested2Spec theMetaClassSpecification addMethodString: 'method2 ^ outer method' protocol: 'foo'.

	self assert: module Nested1 method equals: 10.
	module2 := module2Spec generateModule.
	
	self assert: module Nested1 method equals: 10.
	self assert: module2 Nested2 method equals: 10.
	self assert: module2 Nested2 method2 equals: 20.

	Smalltalk removeKey: #Nested186897657.  