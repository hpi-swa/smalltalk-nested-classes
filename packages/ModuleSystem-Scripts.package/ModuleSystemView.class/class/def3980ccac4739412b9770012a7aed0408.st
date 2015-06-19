definitions
def3980ccac4739412b9770012a7aed0408
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:11:16 pm'); yourself)); add: (#id->#'3980ccac-4739-412b-9770-012a7aed0408'); add: (#block->[:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]'); yourself)