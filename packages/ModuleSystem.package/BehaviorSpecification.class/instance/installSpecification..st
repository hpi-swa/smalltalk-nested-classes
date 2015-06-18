initializing
installSpecification: class
	| compiledMethod |
	class compile: 'specification ^ #SPEC'.

	" replace literal "
	compiledMethod := class >> #specification.
	( 1 to: compiledMethod literals size ) do: [ :idx | 
		(compiledMethod literalAt: idx) = #SPEC
			ifTrue: [ compiledMethod literalAt: idx put: self ] ].