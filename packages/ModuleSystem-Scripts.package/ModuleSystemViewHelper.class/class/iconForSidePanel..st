as yet unclassified
iconForSidePanel: aMemberSpecification
	(aMemberSpecification isKindOf: MethodSpecification)
		ifTrue: [ | types processedTypes |
			types := aMemberSpecification expectedTypes.
			(types includes: #Class) & (types includes: #Namespace)
				ifTrue: [ processedTypes := types reject: [ :sym | sym = #Class ] ]
				ifFalse: [ processedTypes := types ].
			^ (self multiIconFor: processedTypes) ].
	(aMemberSpecification isKindOf:  BehaviorSpecification)
		ifTrue: [ aMemberSpecification isMeta
			ifTrue: [ ^ UiSilkIcons tagBlueIcon ]
			ifFalse: [ ^ UiSilkIcons tagGreenIcon ]].
	^ ViIcons blankIcon