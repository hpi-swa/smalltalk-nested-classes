definitions
def8ff1fe3d6ecb4b06ad30e683c1d1338c
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'30 June 2015 4:50:18 pm'); yourself)); add: (#id->#'8ff1fe3d-6ecb-4b06-ad30-e683c1d1338c'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:moduleSpecification | { #text -> moduleSpecification moduleName.
	#icon -> (ModuleSystemViewHelper iconForSidePanel: moduleSpecification)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:moduleSpecification | { #text -> moduleSpecification moduleName.
	#icon -> (ModuleSystemViewHelper iconForSidePanel: moduleSpecification)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)