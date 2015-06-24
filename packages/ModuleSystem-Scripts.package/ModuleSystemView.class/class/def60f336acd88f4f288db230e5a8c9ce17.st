definitions
def60f336acd88f4f288db230e5a8c9ce17
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'24 June 2015 9:55 am'); yourself)); add: (#id->#'60f336ac-d88f-4f28-8db2-30e5a8c9ce17'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | { #text -> 'Export'.
	#clicked -> [[ memberSpecification export ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | { #text -> ''Export''.
	#clicked -> [[ memberSpecification export ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)