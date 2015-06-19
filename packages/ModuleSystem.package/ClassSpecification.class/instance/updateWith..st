serialize
updateWith: aDict
	aDict methodDict valuesDo: [:value | 
		self addMethodString: (value source) protocol: (value protocol)].
	aDict classDict keysAndValuesDo: [:key :value |
		ClassSpecification update: (self classDict at: key asSymbol) with: value].    
	aDict metaclassSpec methodDict valuesDo: [:value | 
		self theMetaClassSpecification addMethodString: (value source) protocol: (value protocol)].
	aDict metaclassSpec classDict keysAndValuesDo: [:key :value | 
		ClassSpecification update: (self theMetaClassSpecification classDict at: key asSymbol) with: value].