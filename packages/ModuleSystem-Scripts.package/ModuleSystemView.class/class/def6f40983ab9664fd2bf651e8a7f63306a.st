definitions
def6f40983ab9664fd2bf651e8a7f63306a
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'26 June 2015 10:11:37 am'); yourself)); add: (#id->#'6f40983a-b966-4fd2-bf65-1e8a7f63306a'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | {
	#text -> 'Install Module'.
	#icon -> UiFugueIcons plugIcon.
	#clicked -> [[ memberSpecification installModule.
  ViEventNotifier trigger: #ModuleSystemModuleView ]]
}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | {
	#text -> ''Install Module''.
	#icon -> UiFugueIcons plugIcon.
	#clicked -> [[ memberSpecification installModule.
  ViEventNotifier trigger: #ModuleSystemModuleView ]]
}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)