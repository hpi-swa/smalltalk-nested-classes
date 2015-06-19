definitions
def431d5a0c047f4fa091f02b9472bf354a
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:11:16 pm'); yourself)); add: (#id->#'431d5a0c-047f-4fa0-91f0-2b9472bf354a'); add: (#block->[:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)