testing
testInstantiatedSpec
	| class |
	class := self preparedSpec generateBasicModule.
	
	self assert: class classMethod equals: 1.
	self assert: class ClassNested isBehavior.
	self deny: class ClassNested isMeta.
	self assert: class ClassNested classMethod equals: 3.
	self assert: class ClassNested new instMethod equals: 4.

	self assert: class new instMethod equals: 2.
	self assert: class new InstNested isBehavior.
	self deny: class ClassNested isMeta.
	self assert: class new InstNested classMethod equals: 6.
	self assert: class new InstNested new instMethod equals: 5.