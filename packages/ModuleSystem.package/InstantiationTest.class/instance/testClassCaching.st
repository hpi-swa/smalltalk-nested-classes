testing
testClassCaching
	| class instance |
	class := self preparedSpec generateModule.
	
	self assert: class ClassNested equals: class ClassNested.
	
	instance := class new.
	self assert: instance InstNested equals: instance InstNested.