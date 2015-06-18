definitions
def5f53a124cd6740e780811c871c599de8
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 5:42:59 pm'); yourself)); add: (#id->#'5f53a124-cd67-40e7-8081-1c871c599de8'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:classSpecification | #text -> classSpecification className ] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:classSpecification | #text -> classSpecification className ] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)