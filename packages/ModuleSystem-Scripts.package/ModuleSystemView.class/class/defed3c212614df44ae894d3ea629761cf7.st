definitions
defed3c212614df44ae894d3ea629761cf7
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 6:05:22 pm'); yourself)); add: (#id->#'ed3c2126-14df-44ae-894d-3ea629761cf7'); add: (#block->[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)