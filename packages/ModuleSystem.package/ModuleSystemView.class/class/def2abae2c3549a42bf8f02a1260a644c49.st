definitions
def2abae2c3549a42bf8f02a1260a644c49
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'aff40acd-f43a-4522-a0c8-8f79cfabc15e'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:01:21 pm'); yourself)); add: (#id->#'2abae2c3-549a-42bf-8f02-a1260a644c49'); add: (#block->[:in :out | (
	[:objects | objects collect: [:classSpecification | classSpecification theMetaClassSpecification methodDict associations ]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:classSpecification | classSpecification theMetaClassSpecification methodDict associations ]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)