as yet unclassified
execute: aSource on: aMemberspecification
	((aMemberspecification isKindOf: BehaviorSpecification)
		ifTrue: [ aMemberspecification ]
		ifFalse: [ aMemberspecification parent]) addMethodString: aSource protocol: 'foo'.