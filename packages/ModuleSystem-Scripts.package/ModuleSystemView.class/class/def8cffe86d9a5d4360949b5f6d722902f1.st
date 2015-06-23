definitions
def8cffe86d9a5d4360949b5f6d722902f1
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 5:05:20 pm'); yourself)); add: (#id->#'8cffe86d-9a5d-4360-949b-5f6d722902f1'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj |
		[:methodSpecification | {#text -> methodSpecification source
	<- [ :newSource | methodSpecification parent addMethodString: newSource protocol: 'foo'.
	"Dirty hack to force refresh"
	ViPane allInstances do: [:pane | (pane id ==  #'07f1c17c-2ad6-4491-b22e-ae706995da3c') ifTrue: [ pane currentQuery: pane currentQuery]]

 ].
	#stylerClass -> Object }] value: obj ]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj |
		[:methodSpecification | {#text -> methodSpecification source
	<- [ :newSource | methodSpecification parent addMethodString: newSource protocol: ''foo''.
	"Dirty hack to force refresh"
	ViPane allInstances do: [:pane | (pane id ==  #''07f1c17c-2ad6-4491-b22e-ae706995da3c'') ifTrue: [ pane currentQuery: pane currentQuery]]

 ].
	#stylerClass -> Object }] value: obj ]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)