definitions
def53db84057b63499a9c4dd3783b1ee269
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'18 June 2015 6:03:50 pm'); yourself)); add: (#id->#'53db8405-7b63-499a-9c4d-d3783b1ee269'); add: (#block->[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{('<font size="8" color="#AAAAAA">' , group first asString , '</font>') asHtmlText}}}. group}]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{(''<font size="8" color="#AAAAAA">'' , group first asString , ''</font>'') asHtmlText}}}. group}]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)