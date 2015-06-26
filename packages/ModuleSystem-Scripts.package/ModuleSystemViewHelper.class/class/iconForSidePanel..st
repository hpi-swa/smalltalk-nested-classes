as yet unclassified
iconForSidePanel: aMemberSpecification
	(aMemberSpecification isKindOf: MethodSpecification)
		ifTrue: [ ^ (self multiIconFor: aMemberSpecification expectedTypes) ].
	(aMemberSpecification isKindOf:  BehaviorSpecification)
		ifTrue: [ aMemberSpecification isMeta
			ifTrue: [ ^ UiSilkIcons tagBlueIcon ]
			ifFalse: [ ^ UiSilkIcons tagGreenIcon ]].
	^ ViIcons blankIcon