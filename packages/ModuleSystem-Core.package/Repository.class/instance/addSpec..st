modifying
addSpec: aModuleSpec
	aModuleSpec isClassSpec not | aModuleSpec isMeta
		ifTrue: [ self error: 'attempt to add something that is not a ClassSpecification' ].
	moduleSpecs at: (aModuleSpec moduleName asSymbol) put: aModuleSpec.