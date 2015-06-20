definitions
deff784fa7046524218ae085b0f6f03a14c
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:11:16 pm'); yourself)); add: (#id->#'f784fa70-4652-4218-ae08-5b0f6f03a14c'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:object | {#text
		-> (object isText
				ifFalse: [ViLabelService doObject: object]). #icon
		-> (object isText
				ifFalse: [ViIconService doObject: object]). #morph
		-> (object isText
				ifTrue: [object asMorph lock;
						margins: (0 @ 5 corner: 0 @ 2)]). #selectable -> object isText not. #tooltip
		-> [object isText
				ifFalse: [ViObjectPreviewHandler doObject: object]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:object | {#text
		-> (object isText
				ifFalse: [ViLabelService doObject: object]). #icon
		-> (object isText
				ifFalse: [ViIconService doObject: object]). #morph
		-> (object isText
				ifTrue: [object asMorph lock;
						margins: (0 @ 5 corner: 0 @ 2)]). #selectable -> object isText not. #tooltip
		-> [object isText
				ifFalse: [ViObjectPreviewHandler doObject: object]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)