as yet unclassified
iconFor: aSymbol
	^ ((Dictionary new)
		add: #Class -> ViIcons classSideIcon;
		add: #Collection -> ToolIcons collection;
		add: #ClassGenerator -> UiFugueIcons puzzleIcon;
		add: #Version -> self numberIcon;
		add: #Namespace -> self namespaceIcon;
		yourself) at: aSymbol ifAbsent: [ UiFugueIcons crossCircleIcon ]