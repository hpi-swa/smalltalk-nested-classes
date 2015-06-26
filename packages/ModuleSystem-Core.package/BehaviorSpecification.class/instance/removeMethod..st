modifying
removeMethod: methodSpec
	| selector |
	selector := methodSpec selector.
	(methodDict includesKey: selector) ifTrue: [  
		methodDict removeKey: selector.
		methodSpec isNestedClass
			ifTrue: [ classDict removeKey: selector ]]..