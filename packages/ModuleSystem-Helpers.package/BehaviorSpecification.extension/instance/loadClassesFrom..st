*ModuleSystem-Helpers
loadClassesFrom: aFileDirectory
	aFileDirectory directoryNames do: [:dir |
		| instanceDir classDir |
		instanceDir := (aFileDirectory directoryNamed: dir) directoryNamed: 'instance'.  
		(self classAt: dir asSymbol) loadMethodsFrom: instanceDir.
		(self classAt: dir asSymbol) loadClassesFrom: instanceDir.

		classDir := (aFileDirectory directoryNamed: dir) directoryNamed: 'class'.
		(self theMetaClassSpecification classAt: dir asSymbol) loadMethodsFrom: classDir.
		(self theMetaClassSpecification classAt: dir asSymbol) loadClassesFrom: classDir ]