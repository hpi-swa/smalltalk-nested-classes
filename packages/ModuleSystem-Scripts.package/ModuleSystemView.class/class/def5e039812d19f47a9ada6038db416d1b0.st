definitions
def5e039812d19f47a9ada6038db416d1b0
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:11:16 pm'); yourself)); add: (#id->#'5e039812-d19f-47a9-ada6-038db416d1b0'); add: (#block->[:in :out | (
	[:objects | objects collect: [:method | {method methodClass organization categoryOfElement: method selector. method} asTuples]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:method | {method methodClass organization categoryOfElement: method selector. method} asTuples]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)