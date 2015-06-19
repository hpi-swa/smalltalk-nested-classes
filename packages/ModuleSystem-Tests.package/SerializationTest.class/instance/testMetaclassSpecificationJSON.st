testing
testMetaclassSpecificationJSON
	| metaclassSpec |
	metaclassSpec := MetaclassSpecification new.
	metaclassSpec className: 'foo'.
	self assert: metaclassSpec asJson equals: '{"classDict":{},"className":"foo","methodDict":{}}'.
	
	metaclassSpec addMethodString: 'inst ^2' protocol: 'bar'.
	self assert: metaclassSpec asJson equals: '{"classDict":{},"className":"foo","methodDict":{"inst":{"source":"inst ^2","protocol":"bar"}}}'
	