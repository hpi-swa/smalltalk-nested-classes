definitions
defd7dc6b8ceaa5494f9afd3bfdcbc2816f
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'5e00a732-7d43-4538-bcab-c9e0537d48af'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'24 June 2015 1:03:23 pm'); yourself)); add: (#id->#'d7dc6b8c-eaa5-494f-9afd-3bfdcbc2816f'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | { #text -> 'Load Remote'.
	#clicked -> [[ #ModuleSystemRemoteLoad openScript ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | { #text -> ''Load Remote''.
	#clicked -> [[ #ModuleSystemRemoteLoad openScript ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)