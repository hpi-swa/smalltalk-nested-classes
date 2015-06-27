testing
testOuter
	| class instance |
	class := self preparedSpec generateBasicModule.
	
	self assert: class outer equals: nil.
	self assert: class ClassNested outer equals: class.
	
	instance := class new.
	self assert: instance InstNested outer equals: instance.