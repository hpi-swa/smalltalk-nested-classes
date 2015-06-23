definitions
def09ea330475c84241b86557d205eacf00
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 6:05:22 pm'); yourself)); add: (#id->#'09ea3304-75c8-4241-b865-57d205eacf00'); add: (#block->[:in :out | (
	[:objects | objects collect: [:cls | {cls category. cls} asTuples]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:cls | {cls category. cls} asTuples]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)