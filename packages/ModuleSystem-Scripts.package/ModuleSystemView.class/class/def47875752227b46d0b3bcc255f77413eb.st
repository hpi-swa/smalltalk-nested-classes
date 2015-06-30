definitions
def47875752227b46d0b3bcc255f77413eb
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'30 June 2015 2:03:36 pm'); yourself)); add: (#id->#'47875752-227b-46d0-b3bc-c255f77413eb'); add: (#block->[:in :out | ([:all | all collect: [:o |
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