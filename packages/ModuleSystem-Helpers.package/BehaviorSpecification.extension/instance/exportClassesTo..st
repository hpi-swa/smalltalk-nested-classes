*ModuleSystem-Helpers
exportClassesTo: aFileDirectory
	self classDict valuesDo: [:classSpecification | classSpecification exportTo: aFileDirectory ]