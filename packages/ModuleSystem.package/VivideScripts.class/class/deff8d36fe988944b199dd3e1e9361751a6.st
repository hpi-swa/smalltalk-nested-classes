definitions
deff8d36fe988944b199dd3e1e9361751a6
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 4:54:56 pm'); yourself)); add: (#id->#'f8d36fe9-8894-4b19-9dd3-e1e9361751a6'); add: (#block->[:in :out | [in ifEmpty: [{BehaviorSpecification example1. BehaviorSpecification example2}]] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | [in ifEmpty: [{BehaviorSpecification example1. BehaviorSpecification example2}]] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]'); yourself)