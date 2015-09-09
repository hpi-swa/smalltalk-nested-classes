modifying
environmentForClass: class
	| env lexScope |
	lexScope := LexicalScope enclosing: (self lexicalScopeIn: class).
	
	env := Environment named: ('env for ', class name) asSymbol.
	env bind: #outer to: lexScope.
	env importSelf.
	^ env