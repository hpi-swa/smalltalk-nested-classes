definitions
def15add556403d4cc7ac8ae9f18a41635d
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 6:03:50 pm'); yourself)); add: (#id->#'15add556-403d-4cc7-ac8a-e9f18a41635d'); add: (#block->[:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]'); yourself)