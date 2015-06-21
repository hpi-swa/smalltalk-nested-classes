modifying
addMethodString: source protocol: protocol
	| method class |
	method := MethodSpecification source: source protocol: protocol.
	self addMethod: method.

	method isNestedClass ifTrue: [ "add nested class specification"
		class := ClassSpecification new.
		self addClass: class name: method selector ].
