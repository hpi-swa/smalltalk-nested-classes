testing
testClassSideInitialization
	| spec innerClass | 
	spec := ModuleSpecification new.
	spec theMetaClassSpecification addMethodString: 'initialize super initialize. InstantiationTest testVarAt: #init1 put: true.' protocol: 'foo'.
	spec theMetaClassSpecification addMethodString: 'InnerClass < class > ^ Object subclass' protocol: 'foo'.
	innerClass := spec theMetaClassSpecification classAt: #InnerClass.
	innerClass theMetaClassSpecification addMethodString: 'initialize super initialize. InstantiationTest testVarAt: #init2 put: true.' protocol: 'foo'.

	spec generateModule.

	self assert: (self class testVarAt: #init1).
	self assert: (self class testVarAt: #init2).