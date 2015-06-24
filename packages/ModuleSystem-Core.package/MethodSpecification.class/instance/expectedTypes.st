accessing
expectedTypes
	| expectedT |
	expectedT := super expectedTypes.
	self isNestedClass & self parent notNil
		ifTrue: [ expectedT := expectedT, self theClassSpec expectedTypes ].
	^ expectedT