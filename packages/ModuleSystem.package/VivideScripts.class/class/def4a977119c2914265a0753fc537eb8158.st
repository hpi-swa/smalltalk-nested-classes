definitions
def4a977119c2914265a0753fc537eb8158
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 6:03:50 pm'); yourself)); add: (#id->#'4a977119-c291-4265-a075-3fc537eb8158'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:script | {#icon
		-> (script nextIcon
				ifNil: [ViIcons blankIcon]). #text
		-> (script nextLabel
				ifNil: [ViTextStyler new styledTextFor: script sourceCodeShort asText])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:script | {#icon
		-> (script nextIcon
				ifNil: [ViIcons blankIcon]). #text
		-> (script nextLabel
				ifNil: [ViTextStyler new styledTextFor: script sourceCodeShort asText])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)