as yet unclassified
preparedMetaFull0Arg0Proceed
	| spec module spec2 layerSpec partialSpec methodSpec layer |
	spec := ClassSpecification new.
	spec theMetaClassSpecification addMethodString: 'classMethod ^ 10' protocol: 'foo'.
	methodSpec := spec theMetaClassSpecification methodAt: #classMethod.
	methodSpec isLayered: true.
	module := spec generateModule.
	Smalltalk removeKey: #Module12311248668 ifAbsent: [ ].
	Smalltalk at: #Module12311248668 put: module.
	
	spec2 := ClassSpecification new.
	spec2 theMetaClassSpecification addMethodString: 'L <class> <layer> ^ Layer subclass' protocol: 'foo'. 
	layerSpec := spec2 theMetaClassSpecification classAt: #L.
	layerSpec theMetaClassSpecification addMethodString: 'PartialClass <class> ^ Module12311248668'  protocol: 'foo'.
	partialSpec := layerSpec theMetaClassSpecification classAt: #PartialClass.
	partialSpec theMetaClassSpecification addMethodString: 'classMethod ^ 11' protocol: 'foo'.
	layer := spec2 generateModule L.

	^ { layer. module }