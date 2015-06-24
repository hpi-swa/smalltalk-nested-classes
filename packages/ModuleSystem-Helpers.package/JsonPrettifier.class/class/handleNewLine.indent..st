json
handleNewLine: aWriteStream indent: anInteger
	aWriteStream nextPut: Character cr.
	(anInteger - 1) timesRepeat: [ aWriteStream nextPut: Character tab ]