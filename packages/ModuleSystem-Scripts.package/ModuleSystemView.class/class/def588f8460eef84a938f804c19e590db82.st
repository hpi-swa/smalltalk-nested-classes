definitions
def588f8460eef84a938f804c19e590db82
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 6:05:22 pm'); yourself)); add: (#id->#'588f8460-eef8-4a93-8f80-4c19e590db82'); add: (#block->[:in :out | out addAll: ([:methods | methods
		sorted: [:m1 :m2 | m1 selector <= m2 selector]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:methods | methods
		sorted: [:m1 :m2 | m1 selector <= m2 selector]] value: in)]'); yourself)