instantiation
initializeClass: class in: outer
	self assert: class isMeta.
	
	self installOuterMethod: class with: outer.
	self installSpecification: class.
	self installNameMethod: class.
	self markGenerated: class.
	super initializeClass: class.
	classDict keysDo: [ :key | class theNonMetaClass perform: key ].