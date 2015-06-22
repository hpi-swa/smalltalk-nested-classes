definitions
defe93dca5b91ff4835a10e5a14e6eb44b3
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'20 June 2015 2:44:34 am'); yourself)); add: (#id->#'e93dca5b-91ff-4835-a10e-5a14e6eb44b3'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:byteString | {
	#text -> 'Load'.
	#clicked -> [[ Repository loadLocalModule ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:byteString | {
	#text -> ''Load''.
	#clicked -> [[ Repository loadLocalModule ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)