testing
testMethodSpecificationJSON
	| methodSpec |
	methodSpec := MethodSpecification new.
	methodSpec source: 'foo'.
	methodSpec protocol: 'bar'.
	self assert: methodSpec asJson equals: '{"source":"foo","protocol":"bar"}'.