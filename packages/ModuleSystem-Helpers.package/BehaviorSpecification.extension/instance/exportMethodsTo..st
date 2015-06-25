*ModuleSystem-Helpers
exportMethodsTo: aFileDirectory
	self methodDict valuesDo: [:methodSpecification | 
		methodSpecification exportTo: aFileDirectory ].