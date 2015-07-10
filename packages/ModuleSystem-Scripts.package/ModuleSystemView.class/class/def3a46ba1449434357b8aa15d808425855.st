definitions
def3a46ba1449434357b8aa15d808425855
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'30 June 2015 6:12:25 pm'); yourself)); add: (#id->#'3a46ba14-4943-4357-b8aa-15d808425855'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:byteString | { #text -> (
		(byteString = '(all)')
			ifTrue: [ byteString asText addAttribute: (TextEmphasis bold)]
			ifFalse: [ byteString ]
	) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:byteString | { #text -> (
		(byteString = ''(all)'')
			ifTrue: [ byteString asText addAttribute: (TextEmphasis bold)]
			ifFalse: [ byteString ]
	) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)