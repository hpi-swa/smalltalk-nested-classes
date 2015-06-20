definitions
def9c0d5ded77844ed399c280d1ce6f583d
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:11:16 pm'); yourself)); add: (#id->#'9c0d5ded-7784-4ed3-99c2-80d1ce6f583d'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:object | #text
		-> (ViObjectOriginService doObject: object)] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:object | #text
		-> (ViObjectOriginService doObject: object)] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)