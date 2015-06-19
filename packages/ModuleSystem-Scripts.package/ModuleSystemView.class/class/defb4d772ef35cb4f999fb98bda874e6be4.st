definitions
defb4d772ef35cb4f999fb98bda874e6be4
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:11:16 pm'); yourself)); add: (#id->#'b4d772ef-35cb-4f99-9fb9-8bda874e6be4'); add: (#block->[:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass methodDict values , cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass methodDict values , cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)