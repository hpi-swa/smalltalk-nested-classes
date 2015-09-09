accessing
lexicalScopeIn: class
	| enclosingClasses currentCls currentMetaClassSpec | 
	enclosingClasses := OrderedCollection new. 
	currentCls := class.
	currentMetaClassSpec := self parent.
	
	enclosingClasses add: (currentCls :=
		(currentMetaClassSpec theMethodSpec instantiations at: currentCls) first).
		
	[ currentMetaClassSpec parent isNil ] whileFalse: [
		currentMetaClassSpec := currentMetaClassSpec parent.
		enclosingClasses add: (currentCls :=
			(currentMetaClassSpec theMethodSpec instantiations at: currentCls) first) ].
		
	enclosingClasses removeLast.

	^ enclosingClasses