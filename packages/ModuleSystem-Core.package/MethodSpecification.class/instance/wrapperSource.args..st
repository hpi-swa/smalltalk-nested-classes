modifying
wrapperSource: selector args: numArgs
	| args sequence proceedNode proceedSelector |
	args := OrderedCollection new.

	numArgs = 0
		ifTrue: [ proceedSelector := 'proceed' ]
		ifFalse: [ proceedSelector := 'proceed:' ].

	(1 to: numArgs) do: [ :arg | 
		args add: (RBVariableNode named: 'v', arg asString).
		arg > 1 ifTrue: [ proceedSelector := proceedSelector, 'with:' ] ].
	
	proceedNode := RBMessageNode 
		receiver: (RBVariableNode named: #self) 
		selector: proceedSelector
		arguments: args.

	sequence := RBSequenceNode statements: {
		RBMessageNode receiver: (RBMessageNode receiver: (RBVariableNode named: #Processor) selector: #activeProcess) selector: #storeLayerCompositionFrom:and:base: arguments: { RBVariableNode named: '#DICT'. RBVariableNode named: '#SPECS'. RBVariableNode named: '#BASE' }.
		RBReturnNode value: proceedNode }.

	^ (RBMethodNode selector: selector arguments: args body: sequence) newSource.