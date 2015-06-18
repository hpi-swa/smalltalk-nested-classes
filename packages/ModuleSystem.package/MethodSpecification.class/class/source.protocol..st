as yet unclassified
source: source protocol: protocol
	| parseTree transformedSource selector isNestedClass |
	parseTree := RBParser parseMethod: source.
	selector := parseTree selector.
	isNestedClass := parseTree isNestedClass.
	isNestedClass
		ifTrue: [ transformedSource := NestedAccessorVisitor process: parseTree ]
		ifFalse: [ transformedSource := source ].
	^ self new
		source: source;
		transformedSource: transformedSource;
		protocol: protocol;
		selector: selector;
		isNestedClass: isNestedClass;
		yourself