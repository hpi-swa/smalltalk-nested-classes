definitions
def6035a2b5a12c44b2b7b0380ac27b7af8
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 4:59:46 pm'); yourself)); add: (#id->#'6035a2b5-a12c-44b2-b7b0-380ac27b7af8'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:classSpecification | { #text -> (ModuleSystemViewHelper textForClassTree: classSpecification).
	#icon -> (ModuleSystemViewHelper iconForTreeView: classSpecification theMethodSpec )}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:classSpecification | { #text -> (ModuleSystemViewHelper textForClassTree: classSpecification).
	#icon -> (ModuleSystemViewHelper iconForTreeView: classSpecification theMethodSpec )}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)