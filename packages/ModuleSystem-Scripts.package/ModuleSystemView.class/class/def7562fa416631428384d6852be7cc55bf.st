definitions
def7562fa416631428384d6852be7cc55bf
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 5:02 pm'); yourself)); add: (#id->#'7562fa41-6631-4283-84d6-852be7cc55bf'); add: (#block->[:in :out | (
	[:objects | objects collect: [:classSpecification | 
	classSpecification methodDict values,
	classSpecification theMetaClassSpecification methodDict values
]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:classSpecification | 
	classSpecification methodDict values,
	classSpecification theMetaClassSpecification methodDict values
]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)