accessing
arity
	^ self selector count: [ :char | char asSymbol = #: ]