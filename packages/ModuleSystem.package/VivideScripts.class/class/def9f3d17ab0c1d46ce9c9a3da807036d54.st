definitions
def9f3d17ab0c1d46ce9c9a3da807036d54
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 6:03:50 pm'); yourself)); add: (#id->#'9f3d17ab-0c1d-46ce-9c9a-3da807036d54'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:script | #text -> script baseClassName] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:script | #text -> script baseClassName] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)