testing
testClassCaching
	| class |
	class := self preparedSpec generateBasicModule.
	self assert: class ClassNested equals: class ClassNested.