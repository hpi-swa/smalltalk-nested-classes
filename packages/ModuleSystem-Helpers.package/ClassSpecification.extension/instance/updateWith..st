*ModuleSystem-Helpers
updateWith: aDict
	aDict methodDict valuesDo: [:value | 
		self addMethodString: (value source) protocol: (value protocol)].
	aDict classDict keysAndValuesDo: [:key :value |
		(self classAt: key) updateWith: value ].
	aDict metaclassSpec methodDict valuesDo: [ :value | 
		self theMetaClassSpecification addMethodString: (value source) protocol: (value protocol)].
	aDict metaclassSpec classDict keysAndValuesDo: [ :key :value | 
		(self theMetaClassSpecification classAt: key) updateWith: value.   ].