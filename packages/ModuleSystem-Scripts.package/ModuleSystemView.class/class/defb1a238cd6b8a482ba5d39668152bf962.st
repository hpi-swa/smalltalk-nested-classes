definitions
defb1a238cd6b8a482ba5d39668152bf962
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 6:05:22 pm'); yourself)); add: (#id->#'b1a238cd-6b8a-482b-a5d3-9668152bf962'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:object | {#icon
		-> (ViIconService doObject: object). #text
		-> (ViLabelService doObject: object)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:object | {#icon
		-> (ViIconService doObject: object). #text
		-> (ViLabelService doObject: object)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)