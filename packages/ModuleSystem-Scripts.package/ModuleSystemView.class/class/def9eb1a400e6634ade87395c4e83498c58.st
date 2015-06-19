definitions
def9eb1a400e6634ade87395c4e83498c58
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'19 June 2015 4:11:16 pm'); yourself)); add: (#id->#'9eb1a400-e663-4ade-8739-5c4e83498c58'); add: (#block->[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{('<font size="8" color="#AAAAAA">' , group first asString , '</font>') asHtmlText}}}. group}]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{(''<font size="8" color="#AAAAAA">'' , group first asString , ''</font>'') asHtmlText}}}. group}]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)