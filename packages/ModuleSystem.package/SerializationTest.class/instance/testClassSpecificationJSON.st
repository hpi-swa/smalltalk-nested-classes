testing
testClassSpecificationJSON
	| classSpec |
	classSpec := ClassSpecification new.
	classSpec className: 'foo'.
	self assert: classSpec asJson equals: '{"className":"foo","metaclassSpec":{"classDict":{},"className":"foo","methodDict":{}},"classDict":{},"methodDict":{}}'.
	
	classSpec addMethodString: 'inst ^2' protocol: 'bar'.
	self assert: classSpec asJson equals: '{"className":"foo","metaclassSpec":{"classDict":{},"className":"foo","methodDict":{}},"classDict":{},"methodDict":{"inst":{"source":"inst ^2","protocol":"bar"}}}'
	