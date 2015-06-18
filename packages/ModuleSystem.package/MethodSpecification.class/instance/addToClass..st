modifying
addToClass: class
	class compile: transformedSource.

	isNestedClass ifTrue: [ | compiledMethod | "update literals in CompiledMethod"
		compiledMethod := class >> selector.
		( 1 to: compiledMethod literals size ) do: [ :idx | 
			(compiledMethod literalAt: idx) = #DICT
				ifTrue: [ compiledMethod literalAt: idx put: parent instances ].
			(compiledMethod literalAt: idx) = #SPEC
				ifTrue: [ compiledMethod literalAt: idx put: (parent classAt: selector) ] ] ].