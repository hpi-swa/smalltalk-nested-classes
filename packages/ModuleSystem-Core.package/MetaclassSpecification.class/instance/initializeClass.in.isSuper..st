instantiation
initializeClass: class in: outer isSuper: isSuper
	self assert: class isMeta.
	
	self installOuterMethod: class with: outer.

	isSuper ifFalse: [ " specification should be the one from the top-most definition. TODO: add set of specifications "
		self installSpecification: class ]
	ifTrue: [self installSpecification: class ].

	
	"TODO: why did we not install the specification in case it is a super call?"

	self installNameMethod: class in: outer.
	self markGenerated: class.
	super initializeClass: class.