definitions
def8ecc380730094f20a5740afefd520d13
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'24 June 2015 7:57:55 pm'); yourself)); add: (#id->#'8ecc3807-3009-4f20-a574-0afefd520d13'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | {
	#text -> 'Delete'.
	#icon -> UiFugueIcons minusIcon.
	#clicked -> [[ memberSpecification fullRemove.
  ModuleSystemViewHelper refreshClassTree]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | {
	#text -> ''Delete''.
	#icon -> UiFugueIcons minusIcon.
	#clicked -> [[ memberSpecification fullRemove.
  ModuleSystemViewHelper refreshClassTree]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)