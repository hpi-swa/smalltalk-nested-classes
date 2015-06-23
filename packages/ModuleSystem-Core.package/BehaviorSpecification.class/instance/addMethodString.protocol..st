modifying
addMethodString: source protocol: protocol
	| method class |
	method := MethodSpecification source: source protocol: protocol.
	self addMethod: method.

	method isNestedClass ifTrue: [ "add nested class specification"
		class := ClassSpecification new.
		class isLayer: method isLayer.
		self addClass: class name: method selector ].
