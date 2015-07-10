as yet unclassified
hierarchyIconForSidePanel: aMemberSpecification
	(aMemberSpecification isKindOf: MethodSpecification) ifTrue: [ 
		aMemberSpecification isNestedClass ifTrue: [
			^ self multiIconFor: (Array new: (self indentsForClass: aMemberSpecification theClassSpec) withAll: #EmptyHierarchy) ] ].
	^ self multiIconFor: #()