definitions
def83b4553d56c34d4cac0d0e0428d5e19b
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 6:05:22 pm'); yourself)); add: (#id->#'83b4553d-56c3-4d4c-ac0d-0e0428d5e19b'); add: (#block->[:in :out | ([:all | all collect: [:o | (
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