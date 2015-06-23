instance creation
source: source protocol: protocol
	| parseTree transformedSource selector isNestedClass isLayer |
	parseTree := RBParser parseMethod: source.
	selector := parseTree selector.
	isNestedClass := parseTree isNestedClass.
	isLayer := parseTree isLayer.
	isNestedClass
		ifTrue: [ 
			selector first isUppercase ifFalse: [
				self notify: 'Message selector ', selector name asText, 
					' should start with an uppercase letter.' withCRs]. 
			transformedSource := NestedAccessorVisitor process: parseTree ]
		ifFalse: [ transformedSource := source ].
	^ self new
		source: source;
		transformedSource: transformedSource;
		protocol: protocol;
		selector: selector;
		isNestedClass: isNestedClass;
		isLayer: isLayer;
		yourself