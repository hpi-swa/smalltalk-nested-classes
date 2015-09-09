testing
testOuter
	| class |
	class := self preparedSpec generateBasicModule.
	
	self assert: class outer equals: nil.
	self assert: class ClassNested outer equals: class.