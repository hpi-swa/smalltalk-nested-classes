testing
testOuterNestedClassInst
	| class |
	class := self preparedSpecNestedInst generateBasicModule.
	
	self assert: class new ANested classMethod equals: 3.
	self assert: class new ANested new instMethod equals: 4.

	self assert: class new BNested classMethod1 equals: 3.
	self assert: class new BNested classMethod2 equals: 4.

	self assert: class new instMethod1 equals: 3.
	self assert: class new instMethod2 equals: 4.