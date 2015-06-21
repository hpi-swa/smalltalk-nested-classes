as yet unclassified
acceptSequenceNode: aNode
	aNode temporaries do: [ :temp |
		temps add: temp token value asSymbol ].
	super acceptSequenceNode: aNode.
	