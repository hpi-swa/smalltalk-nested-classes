visitor-double dispatching
acceptVariableNode: aNode
	| identifier |
	identifier := aNode token value asSymbol.

	(self lookupSpecial: identifier)
		or: [ self lookupTemps: identifier ]
		or: [ self lookupInstVars: identifier ]
		or: [ self lookupNested: identifier in: aNode ]
		or: [ self lookupRepository: identifier in: aNode ]
		or: [ self lookupLegacy: identifier ].