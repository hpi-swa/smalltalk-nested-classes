json
handleOpeningCharacter: aJsonStream current: aWriteStream indent: anInteger
	aWriteStream nextPut: Character cr.
	anInteger timesRepeat: [ aWriteStream nextPut: Character tab ].
	self prettify: aJsonStream current: aWriteStream indent: anInteger + 1