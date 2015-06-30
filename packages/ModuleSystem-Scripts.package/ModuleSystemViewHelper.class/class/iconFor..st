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
		"Add all ToolBuilder icons"
		add: #arrowDown -> ToolIcons arrowDown;
		add: #arrowUpAndDown -> ToolIcons arrowUpAndDown;
		add: #arrowUp -> ToolIcons arrowUp;
		add: #abstract -> ToolIcons abstract;
		add: #breakpoint -> ToolIcons breakpoint;
		add: #collection -> ToolIcons collection;
		add: #exception -> ToolIcons exception;
		add: #flag -> ToolIcons flag;
		add: #magnitude -> ToolIcons magnitude;
		add: #morph -> ToolIcons morph;
		add: #no -> ToolIcons no;
		add: #notOverridden -> ToolIcons notOverridden;
		add: #primitive -> ToolIcons primitive;
		add: #stream -> ToolIcons stream;
		add: #string -> ToolIcons string;
		"Add SUnit Icons for ToolBuilder"
		add: #testGray -> ToolIcons testGray;
   		add: #testGreen -> ToolIcons testGreen;
   		add: #testOrange -> ToolIcons testOrange;
    		add: #testRed -> ToolIcons testRed;
		yourself) at: aSymbol ifAbsent: [ UiFugueIcons crossCircleIcon ]