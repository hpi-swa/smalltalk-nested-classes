*ModuleSystem-Helpers
classList
	| offset |
	classes isEmpty ifTrue: [ ^ classes ].
	offset := classes first allSuperclasses size.
	^ classes collect: [ :each | | ident className |
		ident := String 
			new: 2 * (0 max: each allSuperclasses size - offset) 
			withAll: $ .
		each isNestedGenerated 
			ifTrue: [ className := each specification selector ]
			ifFalse: [ className := each name ].
		each isAbstract
			ifFalse: [ ident , className ]
			ifTrue: [ 
				ident asText , className asText 
					addAttribute: TextEmphasis italic;
					yourself ] ].