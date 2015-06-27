*ModuleSystem-Helpers
allTestPackages
	^ (self modules values select: [ :mod | mod respondsTo: #allVersions ]
		thenCollect: [ :mod | mod allVersions ]) flatten
			select: [ :mod | mod respondsTo: #Tests ]
			thenCollect: [ :mod | mod Tests ].