*ModuleSystem-Helpers
loadClassesFrom: aFileDirectory
	aFileDirectory directoryNames do: [ :dir |
		(self classAt: dir asSymbol) loadFrom: (aFileDirectory directoryNamed: dir) ].