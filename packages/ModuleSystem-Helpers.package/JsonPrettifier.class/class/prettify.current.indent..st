json
prettify: aJsonStream current: aWriteStream indent: anInteger
	|  char  |
	[aJsonStream atEnd]
		whileFalse: 
			[char := aJsonStream next.
			(self closingSeparators includes: char)
				ifTrue: [ self handleClosingSeparator: aWriteStream indent: anInteger.   
						^ aWriteStream nextPut: char ].
			aWriteStream nextPut: char.
			self spacingSeparators do: [:a |
				(char == a first and: [aJsonStream peek == a second])	
					ifTrue: [ aWriteStream nextPut: Character space ]].
			(self newLineSeparators includes: char)
				ifTrue: [ self handleNewLine: aWriteStream indent: anInteger ].
			(self openingSeparators includes: char)
				ifTrue: [ self handleOpeningSeparator: aJsonStream current: aWriteStream indent: anInteger ].
		].
	^ aWriteStream contents