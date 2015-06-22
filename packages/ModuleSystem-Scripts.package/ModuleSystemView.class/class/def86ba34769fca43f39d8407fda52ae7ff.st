definitions
def86ba34769fca43f39d8407fda52ae7ff
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'20 June 2015 3:32:42 pm'); yourself)); add: (#id->#'86ba3476-9fca-43f3-9d84-07fda52ae7ff'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:byteString | {
	#text -> 'Load remote'.
	#clicked -> [[ #RemoteModulesView openScript ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:byteString | {
	#text -> ''Load remote''.
	#clicked -> [[ #RemoteModulesView openScript ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)