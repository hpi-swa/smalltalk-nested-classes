definitions
defdc5c5c0df25546d380f0330d9a4fefd0
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 4:58:49 pm'); yourself)); add: (#id->#'dc5c5c0d-f255-46d3-80f0-330d9a4fefd0'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:moduleSpecification | #text -> moduleSpecification moduleName ] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:moduleSpecification | #text -> moduleSpecification moduleName ] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)