visitor-double dispatching
acceptMethodNode: aNode
	| newTemps body |
	super acceptMethodNode: aNode.
	newTemps := aNode body temporaries asOrderedCollection.
	newTemps add: (RBVariableNode named: 'returnValue').
	aNode body temporaries: newTemps.

	body := aNode body.
	aNode body: (RBReturnNode value: (RBSequenceNode statements: {
		RBMessageNode receiver: instDictNode selector: #at:ifAbsent: arguments: {
			selfNode.
			RBBlockNode body: body
		} 
	})).