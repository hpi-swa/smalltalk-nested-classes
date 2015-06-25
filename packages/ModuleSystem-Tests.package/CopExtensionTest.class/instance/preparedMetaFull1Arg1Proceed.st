as yet unclassified
preparedMetaFull1Arg1Proceed
	| spec module spec2 layerSpec partialSpec methodSpec layer |
	spec := ModuleSpecification new.
	spec theMetaClassSpecification addMethodString: 'classMethod: arg1 ^ 10 + arg1' protocol: 'foo'.
	methodSpec := spec theMetaClassSpecification methodAt: #classMethod:.
	methodSpec isLayered: true.
	module := spec generateModule.
	Smalltalk removeKey: #Module12311248668 ifAbsent: [ ].
	Smalltalk at: #Module12311248668 put: module.
	
	spec2 := ModuleSpecification new.
	spec2 theMetaClassSpecification addMethodString: 'L <class> <layer> ^ Layer subclass' protocol: 'foo'. 
	layerSpec := spec2 theMetaClassSpecification classAt: #L.
	layerSpec theMetaClassSpecification addMethodString: 'PartialClass <class> ^ Module12311248668'  protocol: 'foo'.
	partialSpec := layerSpec theMetaClassSpecification classAt: #PartialClass.
	partialSpec theMetaClassSpecification addMethodString: 'classMethod: a1 ^ (self proceed: a1 * 2) * 5' protocol: 'foo'.
	layer := spec2 generateModule L.

	^ { layer. module }