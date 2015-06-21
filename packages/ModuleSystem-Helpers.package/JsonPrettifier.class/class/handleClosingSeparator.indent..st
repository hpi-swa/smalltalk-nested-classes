json
handleClosingSeparator: aWriteStream indent: anInteger
	aWriteStream nextPut: Character cr.
	(anInteger - 2) timesRepeat: [ aWriteStream nextPut: Character tab ].