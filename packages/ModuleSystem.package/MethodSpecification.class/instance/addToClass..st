modifying
addToClass: class
	| outerNestedResolvedSource |
	outerNestedResolvedSource := OuterNestedClassVisitor process: (RBParser parseMethod: transformedSource) for: class.
	class compile: outerNestedResolvedSource.

	isNestedClass ifTrue: [ | compiledMethod | "update literals in CompiledMethod"
		compiledMethod := class >> selector.
		( 1 to: compiledMethod literals size ) do: [ :idx | 
			(compiledMethod literalAt: idx) = #DICT
				ifTrue: [ compiledMethod literalAt: idx put: instances ].
			(compiledMethod literalAt: idx) = #SPEC
				ifTrue: [ compiledMethod literalAt: idx put: (parent classAt: selector) ] ] ].