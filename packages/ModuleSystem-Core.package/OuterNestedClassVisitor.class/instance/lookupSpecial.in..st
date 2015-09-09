lookup
lookupSpecial: identifier in: aNode
	identifier = #scope ifTrue: [ self replaceWithScope: aNode. ^ true ].
	^ (identifier = #self) | (identifier = #thisContext) | (identifier = #super) | (identifier = #outer) | (identifier = #enclosing)