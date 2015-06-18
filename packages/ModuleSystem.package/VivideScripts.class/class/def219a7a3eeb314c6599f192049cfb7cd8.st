definitions
def219a7a3eeb314c6599f192049cfb7cd8
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 6:03:50 pm'); yourself)); add: (#id->#'219a7a3e-eb31-4c65-99f1-92049cfb7cd8'); add: (#block->[:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result |
				(ViQueryInterpreter isCollection: result)
					ifTrue: [out addAll: result]
					ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result |
				(ViQueryInterpreter isCollection: result)
					ifTrue: [out addAll: result]
					ifFalse: [out add: result]]]'); yourself)