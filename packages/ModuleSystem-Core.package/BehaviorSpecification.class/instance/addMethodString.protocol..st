modifying
addMethodString: source protocol: protocol
	| method class |
	method := MethodSpecification source: source protocol: protocol.

	method isResource & ModuleSpecification isImporting not ifTrue: [ | resSource | " TODO: check if loading file or not "
		resSource := UIManager default request: 'Generate resource with source code:'.
		resSource ifEmpty: [ ^ self ].
		self resourceDict at: method selector put: (Compiler evaluate: resSource) ].

	self addMethod: method.

	method isNestedClass ifTrue: [
		class := self classAt: method selector ifAbsentPut: [ ClassSpecification new ].
		class isLayer: method isLayer ].