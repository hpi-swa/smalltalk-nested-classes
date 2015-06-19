definitions
def7061381a2b924246b4ed5c8e787da479
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'bdd9f660-2b00-4bf8-8283-50b0a230bb0e'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:01:21 pm'); yourself)); add: (#id->#'7061381a-2b92-4246-b4ed-5c8e787da479'); add: (#block->[:in :out | out addAll: (in sorted: [ :a :b | a key >= b key ]) ]); add: (#sourceCode->'[:in :out | out addAll: (in sorted: [ :a :b | a key >= b key ]) ]'); yourself)