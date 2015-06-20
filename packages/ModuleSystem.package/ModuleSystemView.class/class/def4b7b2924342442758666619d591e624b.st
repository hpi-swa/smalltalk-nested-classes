definitions
def4b7b2924342442758666619d591e624b
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'6db819cb-d695-4476-9d6d-4a4e1cd0f7aa'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:01:21 pm'); yourself)); add: (#id->#'4b7b2924-3424-4275-8666-619d591e624b'); add: (#block->[:in :out | out addAll: (in sorted: [ :a :b | a key >= b key ])]); add: (#sourceCode->'[:in :out | out addAll: (in sorted: [ :a :b | a key >= b key ])]'); yourself)