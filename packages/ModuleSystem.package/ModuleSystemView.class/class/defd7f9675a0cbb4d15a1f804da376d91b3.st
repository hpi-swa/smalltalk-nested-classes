definitions
defd7f9675a0cbb4d15a1f804da376d91b3
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'d824a878-2dbb-45d2-abe3-aca213ce569e'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:01:21 pm'); yourself)); add: (#id->#'d7f9675a-0cbb-4d15-a1f8-04da376d91b3'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:classSpecification | #text -> (
			((classSpecification isKindOf: ModuleSpecification) 
				ifTrue: [ classSpecification moduleName ]
				ifFalse: [ classSpecification className ]
			), ' (', classSpecification asOop, ')')] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:classSpecification | #text -> (
			((classSpecification isKindOf: ModuleSpecification) 
				ifTrue: [ classSpecification moduleName ]
				ifFalse: [ classSpecification className ]
			), '' ('', classSpecification asOop, '')'')] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)