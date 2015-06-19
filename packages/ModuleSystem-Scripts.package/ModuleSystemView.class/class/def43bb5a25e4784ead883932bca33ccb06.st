definitions
def43bb5a25e4784ead883932bca33ccb06
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'2cd5e906-48c2-4d8f-a8f1-ded8ee3568fa'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:01:21 pm'); yourself)); add: (#id->#'43bb5a25-e478-4ead-8839-32bca33ccb06'); add: (#block->[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)