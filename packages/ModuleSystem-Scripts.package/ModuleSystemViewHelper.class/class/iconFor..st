as yet unclassified
iconFor: aSymbol
	^ ((Dictionary new)
		add: #Class -> ViIcons classSideIcon;
		add: #Collection -> ToolIcons collection;
		add: #ClassGenerator -> UiFugueIcons puzzleIcon;
		add: #Version -> self numberIcon;
		add: #Namespace -> self namespaceIcon;
		add: #Tests -> UiFugueIcons trafficLightIcon;
		yourself) at: aSymbol ifAbsent: [ UiFugueIcons crossCircleIcon ]