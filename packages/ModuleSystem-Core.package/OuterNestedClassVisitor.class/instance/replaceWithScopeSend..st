lookup
replaceWithScopeSend: aNode
	| scopeNode |
	" This is for implicit scope receivers. "
	scopeNode := RBMessageNode 
		receiver: (RBVariableNode named: 'LexicalScope')
		selector: #outer:receiver:
		arguments: { RBVariableNode named: 'outer'. RBVariableNode named: 'self' }.
	aNode replaceWith: (RBMessageNode
		receiver: scopeNode
		selector: aNode token value asSymbol).
	^ true