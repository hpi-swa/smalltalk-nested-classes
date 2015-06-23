definitions
def2d127129c34044f79511ebf967cb1a86
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 6:05:22 pm'); yourself)); add: (#id->#'2d127129-c340-44f7-9511-ebf967cb1a86'); add: (#block->[:in :out | (
	[:objects | objects collect: [:pkg | pkg classes]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:pkg | pkg classes]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)