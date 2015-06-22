definitions
defa7d8bd90a5a4499e9cac80fe2ad21b1e
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'20 June 2015 2:41:59 am'); yourself)); add: (#id->#'a7d8bd90-a5a4-499e-9cac-80fe2ad21b1e'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:classSpecification | {
	#text -> 'Export'.
	#clicked -> [[ classSpecification export ]] }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:classSpecification | {
	#text -> ''Export''.
	#clicked -> [[ classSpecification export ]] }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)