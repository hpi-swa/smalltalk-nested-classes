json
prettify: aJsonStream current: aWriteStream indent: anInteger
	|  char |
	[aJsonStream atEnd]
		whileFalse: 
			[char := aJsonStream next.
			char == $"
				ifTrue: [ 
					| last |
					aWriteStream nextPut: char.
					[last := char. char := aJsonStream next. aWriteStream nextPut: char. ] doWhileTrue: [ char ~~ $" or: [ last == $\ ]]  
				 ]
				ifFalse: [
				(self closingCharacters includes: char)
					ifTrue: [ self handleClosingCharacter: aWriteStream indent: anInteger.   
							^ aWriteStream nextPut: char ].
				aWriteStream nextPut: char.
				(char == $:)	
					ifTrue: [ aWriteStream nextPut: Character space ].
				(self newLineCharacters includes: char)
					ifTrue: [ self handleNewLine: aWriteStream indent: anInteger ].
				(self openingCharacters includes: char)
					ifTrue: [ self handleOpeningCharacter: aJsonStream current: aWriteStream indent: anInteger ]
		]].
	^ aWriteStream contents