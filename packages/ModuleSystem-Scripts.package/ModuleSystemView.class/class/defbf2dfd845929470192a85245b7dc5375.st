definitions
defbf2dfd845929470192a85245b7dc5375
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'22 June 2015 3:56:37 pm'); yourself)); add: (#id->#'bf2dfd84-5929-4701-92a8-5245b7dc5375'); add: (#block->[:in :out | out add: {#objects -> in},
	[{
	#text -> 'Refresh'.
	#clicked -> [[ 
		ViPane allInstances do: [:pane | (pane currentQuery ==  #ModuleSystemView asScript) ifTrue: [ pane currentQuery: #ModuleSystemView asScript] ]]]}] value]); add: (#sourceCode->'[:in :out | out add: {#objects -> in},
	[{
	#text -> ''Refresh''.
	#clicked -> [[ 
		ViPane allInstances do: [:pane | (pane currentQuery ==  #ModuleSystemView asScript) ifTrue: [ pane currentQuery: #ModuleSystemView asScript] ]]]}] value]'); yourself)