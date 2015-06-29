instantiation
initializeClass: class in: outer isSuper: isSuper
	self assert: class isMeta.
	
	self installOuterMethod: class with: outer.

	isSuper ifFalse: [ " specification should be the one from the top-most definition. TODO: add set of specifications "
		self installSpecification: class ].

	self installNameMethod: class.
	self markGenerated: class.
	super initializeClass: class.