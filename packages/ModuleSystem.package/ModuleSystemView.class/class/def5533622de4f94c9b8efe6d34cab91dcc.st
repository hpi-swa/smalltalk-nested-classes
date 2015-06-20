definitions
def5533622de4f94c9b8efe6d34cab91dcc
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'f52fdd15-1465-45b5-9f8f-8f932d36fb74'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:01:21 pm'); yourself)); add: (#id->#'5533622d-e4f9-4c9b-8efe-6d34cab91dcc'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:association | #text -> (association key, ' (', association value asOop, ')')] value: obj }]
			value: o), {
	#object -> (o value isNestedClass
		ifTrue: [ o value parent classDict at: o value selector]
		ifFalse: [ o value ]).
	#icon -> (o value isNestedClass
		ifTrue: [ ViIcons classSideIcon ]
		ifFalse: [ ViIcons blankIcon ]) }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:association | #text -> (association key, '' ('', association value asOop, '')'')] value: obj }]
			value: o), {
	#object -> (o value isNestedClass
		ifTrue: [ o value parent classDict at: o value selector]
		ifFalse: [ o value ]).
	#icon -> (o value isNestedClass
		ifTrue: [ ViIcons classSideIcon ]
		ifFalse: [ ViIcons blankIcon ]) }]]
				value: in) do: [:result | out add: result]]'); yourself)