*ModuleSystem-Helpers
findCategories
	| visible result |
	visible := Set new.
	self baseClass withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	result := Array streamContents: [ :stream |
		Smalltalk organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ].
	result := result, Repository instance allTestPackages.
	^ result