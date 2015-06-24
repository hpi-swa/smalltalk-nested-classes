accessing
isNestedClass: aBoolean
	isNestedClass := aBoolean.
	aBoolean ifTrue: [ expectedTypes := #(Class) ]