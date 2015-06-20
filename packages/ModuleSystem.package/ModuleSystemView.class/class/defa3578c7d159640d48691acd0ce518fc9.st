definitions
defa3578c7d159640d48691acd0ce518fc9
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'e65b3959-8505-46ac-b2c9-bdbcf30fa1bb'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:01:21 pm'); yourself)); add: (#id->#'a3578c7d-1596-40d4-8691-acd0ce518fc9'); add: (#block->[:in :out | ([:all | all collect: [:o |
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