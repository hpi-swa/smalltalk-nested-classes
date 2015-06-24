modifying
addMethodString: source protocol: protocol
	| method class |
	method := MethodSpecification source: source protocol: protocol.
	self addMethod: method.

	method isNestedClass ifTrue: [
		class := self classAt: method selector ifAbsentPut: [ ClassSpecification new ].
		class isLayer: method isLayer ].
