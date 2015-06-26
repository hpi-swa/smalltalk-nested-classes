definitions
def42092f67de674f4c94f13223fc44cb08
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'24 June 2015 7:57 pm'); yourself)); add: (#id->#'42092f67-de67-4f4c-94f1-3223fc44cb08'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:behaviorSpecification | {
	#text -> 'New Module'.
	#icon -> UiFugueIcons plusIcon.
	#clicked -> [[ | newName newModule |
	newName := UIManager default request: 'Specify name of module:'.
	newName isEmpty ifFalse: [
		newModule := Repository newModule: newName.
		ModuleSystemViewHelper refreshClassTree ]]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:behaviorSpecification | {
	#text -> ''New Module''.
	#icon -> UiFugueIcons plusIcon.
	#clicked -> [[ | newName newModule |
	newName := UIManager default request: ''Specify name of module:''.
	newName isEmpty ifFalse: [
		newModule := Repository newModule: newName.
		ModuleSystemViewHelper refreshClassTree ]]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)