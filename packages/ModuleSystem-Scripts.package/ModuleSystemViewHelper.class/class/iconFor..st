as yet unclassified
iconFor: aSymbol
	^ ((Dictionary new)
		add: #Class -> ViIcons classSideIcon;
		add: #Collection -> ToolIcons collection;
		add: #ClassGenerator -> UiFugueIcons gearPlusIcon;
		add: #Version -> UiFugueIcons documentNumberIcon;
		yourself) at: aSymbol ifAbsent: [ UiFugueIcons crossCircleIcon ]