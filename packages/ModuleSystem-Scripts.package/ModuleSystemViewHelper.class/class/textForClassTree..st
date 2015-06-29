as yet unclassified
textForClassTree: aClassSpecification
	aClassSpecification parent isMeta
		ifTrue: [ ^ aClassSpecification selector asText addAttribute: TextEmphasis underlined ]
		ifFalse: [ ^ aClassSpecification selector asText ].
	