visitor-double dispatching
acceptBlockNode: aNode
	aNode arguments do: [ :temp |
		temps add: temp token value asSymbol ].
	super acceptBlockNode: aNode.
	