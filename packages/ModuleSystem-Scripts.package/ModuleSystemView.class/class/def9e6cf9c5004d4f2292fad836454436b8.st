definitions
def9e6cf9c5004d4f2292fad836454436b8
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 5:10:40 pm'); yourself)); add: (#id->#'9e6cf9c5-004d-4f22-92fa-d836454436b8'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:object | {#text -> (object parent isMeta
		ifTrue: [ object selector asText addAttribute: (TextEmphasis underlined) ]
		ifFalse: [object selector asText]).
	#selectable -> object isText not.
	#icon ->  (((object isKindOf: MethodSpecification) and: [object isNestedClass]) 
		ifTrue: [ ViIcons classSideIcon ] )}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:object | {#text -> (object parent isMeta
		ifTrue: [ object selector asText addAttribute: (TextEmphasis underlined) ]
		ifFalse: [object selector asText]).
	#selectable -> object isText not.
	#icon ->  (((object isKindOf: MethodSpecification) and: [object isNestedClass]) 
		ifTrue: [ ViIcons classSideIcon ] )}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)