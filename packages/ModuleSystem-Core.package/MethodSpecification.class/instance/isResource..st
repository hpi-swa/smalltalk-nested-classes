accessing
isResource: aBoolean
	isResource := aBoolean.
	aBoolean ifTrue: [ expectedTypes := #(Resource) ]