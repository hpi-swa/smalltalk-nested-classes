definitions
deff96e2dfb87fe4e6692fe7749c80343a9
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 6:05:22 pm'); yourself)); add: (#id->#'f96e2dfb-87fe-4e66-92fe-7749c80343a9'); add: (#block->[:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass methodDict values , cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass methodDict values , cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)