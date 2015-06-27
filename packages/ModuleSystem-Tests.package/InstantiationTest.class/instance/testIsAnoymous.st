testing
testIsAnoymous
	| class |
	class := self preparedSpec generateBasicModule.
	
	self assert: class isAnonymous.
	self assert: class ClassNested isAnonymous.
	self assert: class new InstNested isAnonymous.
	self assert: class class isAnonymous.
	self assert: class ClassNested class isAnonymous.
	self assert: class new InstNested class isAnonymous.

	self deny: Object isAnonymous.
	self deny: Object class isAnonymous.