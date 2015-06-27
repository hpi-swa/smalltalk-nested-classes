*ModuleSystem-Helpers
allTestPackages
	| result |
	result := (self modules values select: [ :mod | mod respondsTo: #allVersions ]
		thenCollect: [ :mod | mod allVersions ]) flatten
			select: [ :mod | mod respondsTo: #Tests ]
			thenCollect: [ :mod | mod Tests ].
	" TODO: this is still a hack "
	result := result, (self modules values 
		select: [ :mod | mod respondsTo: #Tests ]
		thenCollect: [ :mod | mod Tests ]).
	^ result