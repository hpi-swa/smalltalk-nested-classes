definitions
defda4f8b1a751e4ce8bdc7f6a66fcba723
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 6:05:22 pm'); yourself)); add: (#id->#'da4f8b1a-751e-4ce8-bdc7-f6a66fcba723'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:script | #text -> script baseClassName] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:script | #text -> script baseClassName] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)