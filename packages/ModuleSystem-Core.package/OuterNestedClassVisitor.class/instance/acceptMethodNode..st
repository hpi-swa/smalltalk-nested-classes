visitor-double dispatching
acceptMethodNode: aNode
	aNode arguments do: [ :temp |
		temps add: temp token value asSymbol ].
	super acceptMethodNode: aNode.
	