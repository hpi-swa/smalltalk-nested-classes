modifying
addToClass: class
	| outerNestedResolvedSource compiledMethod |
	outerNestedResolvedSource := OuterNestedClassVisitor process: (RBParser parseMethod: transformedSource) for: class.
	class compile: outerNestedResolvedSource.
	compiledMethod := class >> selector.

	isNestedClass ifTrue: [ "update literals in CompiledMethod"
		(1 to: compiledMethod literals size) do: [ :idx | 
			(compiledMethod literalAt: idx) = #DICT
				ifTrue: [ compiledMethod literalAt: idx put: instances ].
			(compiledMethod literalAt: idx) = #SPEC
				ifTrue: [ compiledMethod literalAt: idx put: (parent classAt: selector) ] ] ].

	" replace #outer literal (if present) "
	1 to: compiledMethod literals size do: [ :idx | | assoc |
		assoc := compiledMethod literalAt: idx.
		(assoc isKindOf: Association) ifTrue: [
			assoc key = #outer ifTrue: [ " class may be the meta class (if adding method to class side) "
				compiledMethod literalAt: idx put: (Association key: #outer value: class theNonMetaClass outer) ] ] ].
		
	compiledMethods at: class put: compiledMethod.

	isLayered ifTrue: [ | wrapper | " install COP wrapper "
		class compile: (self wrapperSource: selector args: compiledMethod numArgs).
		wrapper := class >> selector.
		(1 to: wrapper literals size) do: [ :idx |
			(wrapper literalAt: idx) = #DICT
				ifTrue: [ wrapper literalAt: idx put: layeredMethods ].
			(wrapper literalAt: idx) = #BASE
				ifTrue: [ wrapper literalAt: idx put: compiledMethod ].
			(wrapper literalAt: idx) = #SPECS
				ifTrue: [ wrapper literalAt: idx put: layeredMethodsSpec ] ] ].