definitions
defbee09678c6664917a2b319e956ada3c1
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'24 June 2015 7:56:10 pm'); yourself)); add: (#id->#'bee09678-c666-4917-a2b3-19e956ada3c1'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | {
	#text -> 'Export Module'.
	#icon -> UiSilkIcons diskIcon.
	#clicked -> [[ memberSpecification exportModule.
  ModuleSystemViewHelper refreshClassTree ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | {
	#text -> ''Export Module''.
	#icon -> UiSilkIcons diskIcon.
	#clicked -> [[ memberSpecification exportModule.
  ModuleSystemViewHelper refreshClassTree ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)