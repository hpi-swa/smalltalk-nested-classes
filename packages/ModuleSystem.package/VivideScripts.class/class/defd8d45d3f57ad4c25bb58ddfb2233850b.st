definitions
defd8d45d3f57ad4c25bb58ddfb2233850b
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 6:03:50 pm'); yourself)); add: (#id->#'d8d45d3f-57ad-4c25-bb58-ddfb2233850b'); add: (#block->[:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]'); yourself)