instantiation
initializeClass: class in: outer
	self assert: class isMeta.
	
	self installOuterMethod: class with: outer.

	" specification should be the one from the top-most definition. TODO: add set of specifications "
	self installSpecification: class.

	self installNameMethod: class in: outer.
	self markGenerated: class.
	super initializeClass: class.

	class theNonMetaClass initialize.

	" force class-side initialization "
	classDict keysDo: [ :key | class theNonMetaClass perform: key ].