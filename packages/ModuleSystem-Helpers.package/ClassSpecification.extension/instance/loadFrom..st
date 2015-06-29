*ModuleSystem-Helpers
loadFrom: aFileDirectory
	| instanceDir classDir |
	
	instanceDir := aFileDirectory directoryNamed: 'instance'.
	self loadMethodsFrom: instanceDir.
	self loadClassesFrom: instanceDir.
	self loadResourcesFrom: instanceDir.  
    
	classDir := aFileDirectory directoryNamed: 'class'.
	self theMetaClassSpecification loadMethodsFrom: classDir.
	self theMetaClassSpecification loadClassesFrom: classDir.
	self theMetaClassSpecification loadResourcesFrom: classDir.  