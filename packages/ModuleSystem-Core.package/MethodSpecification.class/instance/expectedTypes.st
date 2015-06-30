accessing
expectedTypes
	| expectedT |
	expectedT := super expectedTypes.
	self isNestedClass & self parent notNil
		ifTrue: [ expectedT := expectedT, self theClassSpec expectedTypes ].
	self parent ifNotNil: [ expectedT := expectedT, (self parent toolIconsFor: self selector) ].
	^ expectedT