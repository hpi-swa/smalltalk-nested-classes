testing
testOuterNestedClassMeta
	| class |
	class := self preparedSpecNestedMeta generateModule.
	
	self assert: class ANested classMethod equals: 3.
	self assert: class ANested new instMethod equals: 4.

	self assert: class BNested classMethod1 equals: 3.
	self assert: class BNested classMethod2 equals: 4.

	self assert: class classMethod3 equals: 3.
	self assert: class classMethod4 equals: 4.