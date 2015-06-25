definitions
def3a7b46fc592f4fd69aba17c200f87ee9
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'24 June 2015 7:54:20 pm'); yourself)); add: (#id->#'3a7b46fc-592f-4fd6-9aba-17c200f87ee9'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:behaviorSpecification | {
	#text -> 'Load Module'.
	#icon -> UiFugueIcons folderHorizontalOpenIcon.
	#clicked -> [[ Repository instance loadModule.
  ModuleSystemViewHelper refreshClassTree ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:behaviorSpecification | {
	#text -> ''Load Module''.
	#icon -> UiFugueIcons folderHorizontalOpenIcon.
	#clicked -> [[ Repository instance loadModule.
  ModuleSystemViewHelper refreshClassTree ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)