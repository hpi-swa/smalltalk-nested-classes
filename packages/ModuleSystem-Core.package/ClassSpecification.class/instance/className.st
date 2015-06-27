accessing
className
	parent isMeta
		ifTrue: [ ^ (parent theNonMetaClassSpecification className, ' ', self selector) asSymbol ]
		ifFalse: [ ^ ('(a ', parent className, ') ', self selector) asSymbol ]