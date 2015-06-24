as yet unclassified
acceptReturnNode: aNode
	| sequence |  
	super acceptReturnNode: aNode.
	sequence := RBSequenceNode statements: {
		RBAssignmentNode variable: tempNode value: aNode value.
		RBMessageNode receiver: specNode selector: #initializeClass:in: arguments: { tempNode. selfNode }.
		RBMessageNode receiver: instDictNode selector: #at:put: arguments: { selfNode. tempNode }.
		RBReturnNode value: tempNode
	}.
	aNode replaceWith: sequence.
	