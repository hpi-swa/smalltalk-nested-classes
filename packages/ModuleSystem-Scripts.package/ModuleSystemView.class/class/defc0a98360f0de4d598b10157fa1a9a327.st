definitions
defc0a98360f0de4d598b10157fa1a9a327
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'30 June 2015 5:03:40 pm'); yourself)); add: (#id->#'c0a98360-f0de-4d59-8b10-157fa1a9a327'); add: (#block->[:in :out | out addAll: (in sorted: [:a :b | a selector <= b selector ])]); add: (#sourceCode->'[:in :out | out addAll: (in sorted: [:a :b | a selector <= b selector ])]'); yourself)