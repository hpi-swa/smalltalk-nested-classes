definitions
defe782437c03564312969b7b87707bca2c
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'d31e19bc-ff62-475e-a5f0-cafc0e28166f'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:01:21 pm'); yourself)); add: (#id->#'e782437c-0356-4312-969b-7b87707bca2c'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:memberSpec | #text ->
	((memberSpec isKindOf: MethodSpecification)
		ifTrue: [memberSpec source]
		ifFalse: [
		| selector |
		selector := memberSpec parent classDict keyAtValue: memberSpec.
		(memberSpec parent methodDict at: selector) source]) 
                             <- [:text | memberSpec parent addMethodString: text protocol: 'foo' ]] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:memberSpec | #text ->
	((memberSpec isKindOf: MethodSpecification)
		ifTrue: [memberSpec source]
		ifFalse: [
		| selector |
		selector := memberSpec parent classDict keyAtValue: memberSpec.
		(memberSpec parent methodDict at: selector) source]) 
                             <- [:text | memberSpec parent addMethodString: text protocol: ''foo'' ]] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)