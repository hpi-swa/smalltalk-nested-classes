definitions
def46099f0f7f6242d49a48efbadc7e39fc
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'30 June 2015 6:17:48 pm'); yourself)); add: (#id->#'46099f0f-7f62-42d4-9a48-efbadc7e39fc'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | {#text -> 'Change protocol'.
	#icon -> UiSilkIcons pencilIcon.
	#clicked -> [[  | newName newModule |
	(memberSpecification isKindOf: MethodSpecification) ifTrue: [
		newName := UIManager default request: 'Specify new protocol name:'.
		newName isEmpty ifFalse: [
			memberSpecification protocol: newName.
			ViEventNotifier trigger: #ModuleSystemModuleView]]]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:memberSpecification | {#text -> ''Change protocol''.
	#icon -> UiSilkIcons pencilIcon.
	#clicked -> [[  | newName newModule |
	(memberSpecification isKindOf: MethodSpecification) ifTrue: [
		newName := UIManager default request: ''Specify new protocol name:''.
		newName isEmpty ifFalse: [
			memberSpecification protocol: newName.
			ViEventNotifier trigger: #ModuleSystemModuleView]]]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)