as yet unclassified
iconFor: aSymbol
	^ ((Dictionary new)
		add: #Class -> ViIcons classSideIcon;
		add: #Collection -> ToolIcons collection;
		add: #ClassGenerator -> UiFugueIcons puzzleIcon;
		add: #Version -> self numberIcon;
		add: #Namespace -> self namespaceIcon;
		add: #Tests -> UiFugueIcons trafficLightIcon;
		add: #Module -> UiFugueIcons sitemapApplicationBlueIcon;
		add: #EmptyHierarchy -> UiFugueIcons gridDotIcon;
		add: #Resource -> UiFugueIcons blueDocumentMediumIcon;
		add: #ResourceDict -> UiFugueIcons inboxDocumentIcon;
		addAll: ToolIcons icons;
		yourself) at: aSymbol ifAbsent: [ UiFugueIcons crossCircleIcon ]