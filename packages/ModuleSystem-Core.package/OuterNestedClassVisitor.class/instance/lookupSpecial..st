lookup
lookupSpecial: identifier
	^ (identifier = #self) | (identifier = #thisContext) | (identifier = #super) | (identifier = #outer)