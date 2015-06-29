as yet unclassified
textForSidePanel: aMemberSpecification
	(aMemberSpecification isKindOf: BehaviorSpecification)
		ifTrue: [ aMemberSpecification isMeta 
			ifTrue: [ ^ ('(self class)' asText addAttribute: TextEmphasis bold) addAttribute: TextColor black ]
			ifFalse: [ ^ ('(self)' asText addAttribute: TextEmphasis bold) addAttribute: TextColor black ] ]
		ifFalse: [ aMemberSpecification parent isMeta
			ifTrue: [ ^ aMemberSpecification selector asText addAttribute: (TextEmphasis underlined) ]
			ifFalse: [ ^ aMemberSpecification selector asText ]].
	^ aMemberSpecification asString