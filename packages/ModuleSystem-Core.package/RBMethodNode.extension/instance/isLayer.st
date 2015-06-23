*ModuleSystem-Core
isLayer
	^ pragmas 
		ifNil: [ ^ false ]
		ifNotNil: [ pragmas anySatisfy: [ :pragma | pragma selector = #layer ] ].