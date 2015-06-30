definitions
defcfbca74a5f504529aba4c6aaba80250a
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'30 June 2015 6:08:53 pm'); yourself)); add: (#id->#'cfbca74a-5f50-4529-aba4-c6aaba80250a'); add: (#block->[:in :out | (
	[:objects | objects collect: [:classSpecification | {'(all)'} union: classSpecification protocols ]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:classSpecification | {''(all)''} union: classSpecification protocols ]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)