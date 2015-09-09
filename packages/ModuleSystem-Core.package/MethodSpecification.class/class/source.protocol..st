instance creation
source: source protocol: protocol
	| parseTree transformedSource selector isNestedClass isResource |
	parseTree := RBParser parseMethod: source.
	selector := parseTree selector.
	isNestedClass := parseTree isNestedClass.
	isResource := parseTree isResource.
	isNestedClass
		ifTrue: [ 
			selector first isUppercase ifFalse: [
				"self notify: 'Message selector ', selector name asText, 
					' should start with an uppercase letter.' withCRs"]. 
			transformedSource := NestedAccessorVisitor process: parseTree ]
		ifFalse: [ transformedSource := source ].
	isResource
		ifTrue: [ transformedSource := selector, ' ^ self class specification resourceAt: #', selector asString ].
	^ self new
		source: source;
		transformedSource: transformedSource;
		protocol: protocol;
		selector: selector;
		isNestedClass: isNestedClass;
		isResource: isResource;
		parameters: (parseTree arguments collect: [ :node | node name ]);
		yourself