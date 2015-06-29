as yet unclassified
iconForTreeView: aMemberSpecification
	(aMemberSpecification isKindOf: MethodSpecification)
		ifTrue: [ | types processedTypes |
			types := aMemberSpecification expectedTypes.
			(types includes: #Class) & (types includes: #Namespace)
				ifTrue: [ processedTypes := types reject: [ :sym | sym = #Class ] ]
				ifFalse: [ processedTypes := types ].
			aMemberSpecification isNestedClass ifTrue: [
				processedTypes := processedTypes, (Array new: (self indentsForClass: aMemberSpecification theClassSpec) withAll: #EmptyHierarchy)].
			^ (self multiIconFor: processedTypes) ].
	(aMemberSpecification isKindOf: ModuleSpecification)
		ifTrue: [ ^ self multiIconFor: #(Module Namespace) ].
	(aMemberSpecification isKindOf: BehaviorSpecification)
		ifTrue: [ aMemberSpecification isMeta
			ifTrue: [ "^ UiSilkIcons tagBlueIcon" ^ ViIcons blankIcon ]
			ifFalse: [ "^ UiSilkIcons tagGreenIcon" ^ self iconForSidePanel: aMemberSpecification theMethodSpec ] ].
	^ ViIcons blankIcon