as yet unclassified
textForClassTree: aClassSpecification
	aClassSpecification parent isMeta
		ifTrue: [ ^ aClassSpecification nameInParent asText addAttribute: (TextEmphasis underlined) ]
		ifFalse: [ ^ aClassSpecification nameInParent asText ].
	^ aClassSpecification asString