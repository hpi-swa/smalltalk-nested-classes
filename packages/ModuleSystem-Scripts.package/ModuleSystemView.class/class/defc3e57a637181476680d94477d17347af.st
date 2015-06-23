definitions
defc3e57a637181476680d94477d17347af
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 6:05:22 pm'); yourself)); add: (#id->#'c3e57a63-7181-4766-80d9-4477d17347af'); add: (#block->[:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)