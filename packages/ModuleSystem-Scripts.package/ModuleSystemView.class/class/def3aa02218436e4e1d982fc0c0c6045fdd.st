definitions
def3aa02218436e4e1d982fc0c0c6045fdd
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'24 June 2015 7:57:25 pm'); yourself)); add: (#id->#'3aa02218-436e-4e1d-982f-c0c0c6045fdd'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | {
	#text -> 'Rename'.
	#icon -> UiFugueIcons documentRenameIcon.
	#clicked -> [[ | newName |
  newName := UIManager default request: 'Specify name name'.
  newName isEmpty ifFalse: [.
  	memberSpecification fullRename: newName.
  	ModuleSystemViewHelper refreshClassTree ]]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | {
	#text -> ''Rename''.
	#icon -> UiFugueIcons documentRenameIcon.
	#clicked -> [[ | newName |
  newName := UIManager default request: ''Specify name name''.
  newName isEmpty ifFalse: [.
  	memberSpecification fullRename: newName.
  	ModuleSystemViewHelper refreshClassTree ]]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)