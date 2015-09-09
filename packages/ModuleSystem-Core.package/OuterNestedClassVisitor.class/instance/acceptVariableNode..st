visitor-double dispatching
acceptVariableNode: aNode
	| identifier |
	identifier := aNode token value asSymbol.

	"TODO: maybe change order so that #outer etc. can be shadowed with local variables?"
	(self lookupSpecial: identifier in: aNode)
		or: [ self lookupTemps: identifier ]
		or: [ self lookupInstVars: identifier ]
		or: [ self replaceWithScopeSend: aNode ].