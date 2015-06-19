definitions
def9550ea688acc4946ae49aab00b6ed1a0
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'6b04a2f5-59b1-461c-b212-b69cf8affdb3'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:01:21 pm'); yourself)); add: (#id->#'9550ea68-8acc-4946-ae49-aab00b6ed1a0'); add: (#block->[:in :out | (
	[:objects | objects collect: [:classSpecification | classSpecification methodDict associations ]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:classSpecification | classSpecification methodDict associations ]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)