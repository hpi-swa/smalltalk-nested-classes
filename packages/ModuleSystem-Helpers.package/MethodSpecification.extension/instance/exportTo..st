*ModuleSystem-Helpers
exportTo: aFileDirectory
	| file |
	[ file := aFileDirectory fileNamed: (self selector copyReplaceAll: ':' with: '.'), '.st'.
		file nextPutAll: self source ] ensure: [ file close ]