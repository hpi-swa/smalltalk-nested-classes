*ModuleSystem-Core
isNestedClass
	^ pragmas 
		ifNil: [ ^ false ]
		ifNotNil: [ pragmas anySatisfy: [ :pragma | pragma selector = #class ] ].