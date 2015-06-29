*ModuleSystem-Core
isResource
	^ pragmas 
		ifNil: [ ^ false ]
		ifNotNil: [ pragmas anySatisfy: [ :pragma | pragma selector = #resource ] ].