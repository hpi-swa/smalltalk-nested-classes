definitions
defd856f7864069411c97559e7bd0054f6e
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'60f336ac-d88f-4f28-8db2-30e5a8c9ce17'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'24 June 2015 1:02:35 pm'); yourself)); add: (#id->#'d856f786-4069-411c-9755-9e7bd0054f6e'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | { #text -> 'Export'.
	#clicked -> [[ memberSpecification export ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | { #text -> ''Export''.
	#clicked -> [[ memberSpecification export ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)