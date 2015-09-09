visitor-double dispatching
acceptReturnNode: aNode
	| statements |  
	super acceptReturnNode: aNode.
	statements := OrderedCollection new.
	statements 
		add: (RBAssignmentNode variable: tempNode value: aNode value);
		add: (RBMessageNode receiver: specNode selector: #initializeClass:in:withArguments: arguments: { 
			tempNode. 
			selfNode.
			RBArrayNode statements: aNode methodNode arguments }).
	isUnary ifTrue: [ statements add: (RBMessageNode receiver: instDictNode selector: #at:put: arguments: { selfNode. tempNode }) ].
	statements add: (RBReturnNode value: tempNode).
	aNode replaceWith: (RBSequenceNode statements: statements).
	