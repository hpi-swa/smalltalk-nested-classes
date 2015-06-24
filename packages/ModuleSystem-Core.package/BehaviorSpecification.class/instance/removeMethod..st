modifying
removeMethod: methodSpec
	| selector |
	selector := methodSpec selector.
	methodDict removeKey: selector.
	methodSpec isNestedClass
		ifTrue: [ classDict removeKey: selector ].