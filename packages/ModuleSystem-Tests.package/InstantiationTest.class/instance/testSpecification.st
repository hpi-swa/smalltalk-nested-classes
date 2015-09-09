testing
testSpecification
	| class spec |
	spec := self preparedSpec.
	class := spec generateBasicModule.
	
	self assert: class specification equals: spec.
	self assert: class specification theMetaClassSpecification equals: class class specification.

	self should: [ Object specification ] raise: MessageNotUnderstood.
	self should: [ Object class specification ] raise: MessageNotUnderstood.
	self should: [ class new specification ] raise: MessageNotUnderstood.