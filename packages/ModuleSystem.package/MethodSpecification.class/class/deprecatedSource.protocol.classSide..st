as yet unclassified
deprecatedSource: source protocol: protocol classSide: classSide
	| parseTree transformedSource selector |
	parseTree := RBParser parseMethod: source.
	selector := parseTree selector.
	parseTree isNestedClass
		ifTrue: [ transformedSource := ClassGenVisitor process: parseTree classSide: classSide ]
		ifFalse: [ transformedSource := source ].
	^ self new
		source: source;
		transformedSource: transformedSource;
		protocol: protocol;
		selector: selector;
		isClassSide: classSide;
		yourself