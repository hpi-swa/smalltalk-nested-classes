lookup
replaceWithOuter: aNode
	| newNode |
	newNode := RBMessageNode 
		receiver: (RBVariableNode named: 'LexicalScope')
		selector: #outer:receiver:skipReceiver:
		arguments: { RBVariableNode named: 'outer'. RBVariableNode named: 'self'. RBVariableNode named: 'true' }.
	aNode replaceWith: newNode.  