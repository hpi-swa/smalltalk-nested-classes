lookup
replaceWithScope: aNode
	| newNode |
	newNode := RBMessageNode 
		receiver: (RBVariableNode named: 'LexicalScope')
		selector: #outer:receiver:
		arguments: { RBVariableNode named: 'outer'. RBVariableNode named: 'self' }.
	aNode replaceWith: newNode.  