definitions
def3954278f97424019967bc8397f9e12c2
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 4:59:09 pm'); yourself)); add: (#id->#'3954278f-9742-4019-967b-c8397f9e12c2'); add: (#block->[:in :out | (
	[:objects | objects collect: [:moduleSpecification | moduleSpecification classDict values, moduleSpecification theMetaClassSpecification classDict values]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:moduleSpecification | moduleSpecification classDict values, moduleSpecification theMetaClassSpecification classDict values]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)