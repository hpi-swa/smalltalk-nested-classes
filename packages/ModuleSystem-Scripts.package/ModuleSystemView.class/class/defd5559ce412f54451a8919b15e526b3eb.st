definitions
defd5559ce412f54451a8919b15e526b3eb
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 5:41:32 pm'); yourself)); add: (#id->#'d5559ce4-12f5-4451-a891-9b15e526b3eb'); add: (#block->[:in :out | out addAll: (in sorted: [:a :b | a nameInParent <= b nameInParent ])]); add: (#sourceCode->'[:in :out | out addAll: (in sorted: [:a :b | a nameInParent <= b nameInParent ])]'); yourself)