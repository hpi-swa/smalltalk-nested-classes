definitions
def4ea19c0468d14254a6cc8b5074f2df54
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 5:00:38 pm'); yourself)); add: (#id->#'4ea19c04-68d1-4254-a6cc-8b5074f2df54'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:association | #text -> association key] value: obj }]
			value: o), { #object -> (o value isNestedClass
	ifTrue: [ o value parent classDict at: o value selector]
	ifFalse: [ o value ]) }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:association | #text -> association key] value: obj }]
			value: o), { #object -> (o value isNestedClass
	ifTrue: [ o value parent classDict at: o value selector]
	ifFalse: [ o value ]) }]]
				value: in) do: [:result | out add: result]]'); yourself)