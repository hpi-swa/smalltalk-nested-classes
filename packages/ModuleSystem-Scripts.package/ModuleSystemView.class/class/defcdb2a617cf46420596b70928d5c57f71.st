definitions
defcdb2a617cf46420596b70928d5c57f71
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'a385e24a-1c9e-4730-9134-8774835a7428'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:01:21 pm'); yourself)); add: (#id->#'cdb2a617-cf46-4205-96b7-0928d5c57f71'); add: (#block->[:in :out | ([:all | all collect: [:o |
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