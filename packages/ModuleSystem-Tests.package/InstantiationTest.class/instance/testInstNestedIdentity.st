testing
testInstNestedIdentity
	| class |
	class := self preparedSpec generateBasicModule.
	
	self assert: class new ~~ class new.
	self assert: class new InstNested ~~ class new InstNested.