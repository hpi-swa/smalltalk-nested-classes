definitions
def6d59b0ef5daf435ba40c989019d85800
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 4:59:51 pm'); yourself)); add: (#id->#'6d59b0ef-5daf-435b-a40c-989019d85800'); add: (#block->[:in :out | (
	[:objects | objects collect: [:classSpecification | classSpecification methodDict associations]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:classSpecification | classSpecification methodDict associations]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)