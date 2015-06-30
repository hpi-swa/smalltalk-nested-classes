definitions
def35eff50d78984b2c823c7ca08f76b2dc
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'30 June 2015 2:03:36 pm'); yourself)); add: (#id->#'35eff50d-7898-4b2c-823c-7ca08f76b2dc'); add: (#block->[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{('<font size="8" color="#AAAAAA">' , group first asString , '</font>') asHtmlText}}}. group}]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{(''<font size="8" color="#AAAAAA">'' , group first asString , ''</font>'') asHtmlText}}}. group}]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)