definitions
def2fb43af8477f4d2a85bdd0622e7d97d6
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 6:05:22 pm'); yourself)); add: (#id->#'2fb43af8-477f-4d2a-85bd-d0622e7d97d6'); add: (#block->[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)