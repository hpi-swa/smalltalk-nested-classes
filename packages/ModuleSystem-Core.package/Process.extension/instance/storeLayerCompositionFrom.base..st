*ModuleSystem-Core
storeLayerCompositionFrom: partialDict base: base
	| selectedPartials |
	selectedPartials := OrderedCollection new.
	self activeLayers do: [ :layer |
		partialDict at: layer ifPresent: [ :partial | selectedPartials add: partial ] ].
	selectedPartials add: base.

	self addLayerComposition: selectedPartials forContext: thisContext sender.