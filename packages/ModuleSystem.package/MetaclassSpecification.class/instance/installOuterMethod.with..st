initializing
installOuterMethod: class with: outer
	| compiledMethod |
	class compile: 'outer ^ #OUTER'.

	" replace literal "
	compiledMethod := class >> #outer.
	( 1 to: compiledMethod literals size ) do: [ :idx | 
		(compiledMethod literalAt: idx) = #OUTER
			ifTrue: [ compiledMethod literalAt: idx put: outer ] ].