*ModuleSystem-Core
activateLayer: aLayer
	activeLayers ifNil: [ activeLayers := OrderedCollection new ].
	activeLayers add: aLayer.