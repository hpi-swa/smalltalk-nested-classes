definitions
def8cffe86d9a5d4360949b5f6d722902f1
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 5:05:20 pm'); yourself)); add: (#id->#'8cffe86d-9a5d-4360-949b-5f6d722902f1'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj |
		[:memberSpecification | {#text -> ((memberSpecification isKindOf: MethodSpecification)
	ifTrue: [memberSpecification source]
	ifFalse: [ Object sourceCodeTemplate ])
	<- [ :newSource | ModuleSystemViewHelper execute: newSource on: memberSpecification. 		ModuleSystemViewHelper refreshClassTree].
	#stylerClass -> Object }] value: obj ]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj |
		[:memberSpecification | {#text -> ((memberSpecification isKindOf: MethodSpecification)
	ifTrue: [memberSpecification source]
	ifFalse: [ Object sourceCodeTemplate ])
	<- [ :newSource | ModuleSystemViewHelper execute: newSource on: memberSpecification. 		ModuleSystemViewHelper refreshClassTree].
	#stylerClass -> Object }] value: obj ]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)