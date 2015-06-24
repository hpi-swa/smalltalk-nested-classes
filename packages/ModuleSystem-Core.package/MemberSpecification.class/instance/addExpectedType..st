modifying
addExpectedType: aSymbol
	(expectedTypes includes: aSymbol)
		ifFalse: [ expectedTypes add: aSymbol ]