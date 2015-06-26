testing
testInheritedClassInstantiationIsNewClass
	| spec nested1Spec module |
	spec := ModuleSpecification new.
	spec theMetaClassSpecification addMethodString: 'Nested1 < class > ^ Object subclass' protocol: 'foo'.
	nested1Spec := spec theMetaClassSpecification classAt: #Nested1.
	nested1Spec theMetaClassSpecification addMethodString: 'NestedNested < class > ^ Object subclass' protocol: 'foo'.
	spec theMetaClassSpecification addMethodString: 'Nested2 < class > ^ Nested1 subclass' protocol: 'foo'.

	module := spec generateModule.
	self assert: module Nested1 NestedNested ~~ module Nested2 NestedNested.