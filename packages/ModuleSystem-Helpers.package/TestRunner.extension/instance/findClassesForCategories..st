*ModuleSystem-Helpers
findClassesForCategories: aCollection

	| items |
	aCollection isEmpty 
		ifTrue: [ ^ self baseClass withAllSubclasses asSet ].
	items := aCollection gather: [ :category |
		category isBehavior
			ifTrue: [ category allTestCases select: [ :each | each includesBehavior: self baseClass  ] ]
			ifFalse: [ ((Smalltalk organization listAtCategoryNamed: category)
				collect: [ :each | Smalltalk at: each ])
				select: [ :each | each includesBehavior: self baseClass ] ] ].
	^ items asSet.