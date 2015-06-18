definitions
def20a37173b4604fa2945d2845333b8c27
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 6:03:50 pm'); yourself)); add: (#id->#'20a37173-b460-4fa2-945d-2845333b8c27'); add: (#block->[:in :out | [#groups] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | [#groups] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]'); yourself)