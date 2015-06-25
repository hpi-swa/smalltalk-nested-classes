*ModuleSystem-Helpers
exportTo: aFileDirectory
	| classFileDirectory instanceDir classDir |
	(self methodDict isEmpty and: [ self theMetaClassSpecification methodDict isEmpty ])
		ifTrue: [ ^self ].

	aFileDirectory createDirectory: self selector.
	classFileDirectory := aFileDirectory directoryNamed: self selector.
	
	self methodDict ifNotEmpty: [
		classFileDirectory createDirectory: 'instance'.
		instanceDir := classFileDirectory directoryNamed: 'instance'.
		self exportMethodsTo: instanceDir.
		self exportClassesTo: instanceDir ].

	self theMetaClassSpecification methodDict ifNotEmpty: [
		classFileDirectory createDirectory: 'class'.
		classDir := classFileDirectory directoryNamed: 'class'.
		self theMetaClassSpecification exportMethodsTo: classDir.
		self theMetaClassSpecification exportClassesTo: classDir ].