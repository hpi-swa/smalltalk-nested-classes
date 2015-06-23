as yet unclassified
preparedSpecMeta0Arg0Proceed
	| spec layer methodSpec p1 |
	spec := ClassSpecification new.
	spec theMetaClassSpecification addMethodString: 'classMethod ^ 10' protocol: 'foo'.
	
	layer := Object new.
	p1 := Object generateCompiledMethod: 'classMethod ^ 11'.

	methodSpec := spec theMetaClassSpecification methodAt: #classMethod.
	methodSpec isLayered: true.
	methodSpec layerAt: layer put: p1.

	^ { layer. spec }