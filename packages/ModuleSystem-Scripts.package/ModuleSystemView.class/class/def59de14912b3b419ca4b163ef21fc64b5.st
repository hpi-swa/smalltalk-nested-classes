definitions
def59de14912b3b419ca4b163ef21fc64b5
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'24 June 2015 9:06:07 pm'); yourself)); add: (#id->#'59de1491-2b3b-419c-a4b1-63ef21fc64b5'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:memberSpecification | #icon -> (ModuleSystemViewHelper iconForSidePanel: memberSpecification)] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:memberSpecification | #icon -> (ModuleSystemViewHelper iconForSidePanel: memberSpecification)] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)