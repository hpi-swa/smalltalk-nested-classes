*ModuleSystem-Core
storeLayerCompositionFrom: partialDict and: specDict base: base
	| selectedPartials |
	selectedPartials := OrderedCollection new.
	self activeLayers do: [ :layer | | partial |
		partial := partialDict at: layer ifAbsent: [ 
			specDict at: layer ifPresent: [ :spec | partialDict at: layer put: spec generateCompiledMethod ] ].
		partial ifNotNil: [ selectedPartials add: partial ] ].
	selectedPartials add: base.

	self addLayerComposition: selectedPartials forContext: thisContext sender.