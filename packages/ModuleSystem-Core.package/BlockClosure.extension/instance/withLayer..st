*ModuleSystem-Core
withLayer: aLayer
	| process result |
	process := Processor activeProcess.
	process activateLayer: aLayer.
	result := self value.
	process deactivateLayer: aLayer.
	^ result