definitions
def1d8a56aa6958487db38f3705a99855e1
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 6:03:50 pm'); yourself)); add: (#id->#'1d8a56aa-6958-487d-b38f-3705a99855e1'); add: (#block->[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allCallsOn: symbol]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allCallsOn: symbol]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)