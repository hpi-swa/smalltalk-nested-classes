definitions
defed3da74a029b401283e0b55e36a6cbbf
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 6:03:50 pm'); yourself)); add: (#id->#'ed3da74a-029b-4012-83e0-b55e36a6cbbf'); add: (#block->[:in :out | (
	[:objects | objects collect: [:method | {method methodClass organization categoryOfElement: method selector. method} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:method | {method methodClass organization categoryOfElement: method selector. method} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)