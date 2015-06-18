definitions
defa0ccc578b3804b8db7e553195f6e6cb8
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 6:03:50 pm'); yourself)); add: (#id->#'a0ccc578-b380-4b8d-b7e5-53195f6e6cb8'); add: (#block->[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)