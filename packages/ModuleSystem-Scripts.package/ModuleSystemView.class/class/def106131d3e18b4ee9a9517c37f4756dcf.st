definitions
def106131d3e18b4ee9a9517c37f4756dcf
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 6:05:22 pm'); yourself)); add: (#id->#'106131d3-e18b-4ee9-a951-7c37f4756dcf'); add: (#block->[:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]'); yourself)