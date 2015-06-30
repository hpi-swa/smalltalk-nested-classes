definitions
defc55f23de5d644892b5e31cfad5e7560a
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'30 June 2015 6:13:33 pm'); yourself)); add: (#id->#'c55f23de-5d64-4892-b5e3-1cfad5e7560a'); add: (#block->[:in :out | (
	[:objects | objects collect: [:tuple |
		[:classSpecification :byteString | {classSpecification. classSpecification theMetaClassSpecification}, (classSpecification methodsFor: byteString) ] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:tuple |
		[:classSpecification :byteString | {classSpecification. classSpecification theMetaClassSpecification}, (classSpecification methodsFor: byteString) ] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]'); yourself)