definitions
defcf7bd07e17174c7dbf195e72d57d9401
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 6:03:50 pm'); yourself)); add: (#id->#'cf7bd07e-1717-4c7d-bf19-5e72d57d9401'); add: (#block->[:in :out | out addAll: ([:methods | methods
		sorted: [:m1 :m2 | m1 selector <= m2 selector]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:methods | methods
		sorted: [:m1 :m2 | m1 selector <= m2 selector]] value: in)]'); yourself)