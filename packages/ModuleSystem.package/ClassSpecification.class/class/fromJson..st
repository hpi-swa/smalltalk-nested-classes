serialize
fromJson: aJson
	| data module |
	data := Json readFrom: aJson readStream.
	module := ClassSpecification new.

	data methodDict valuesDo: [:value | 
		module addMethodString: (value source) protocol: (value protocol)].
	data classDict keysAndValuesDo: [:key :value |
		(module classDict at: key asSymbol) updateWith: value].    
	data metaclassSpec methodDict valuesDo: [:value | 
		module theMetaClassSpecification addMethodString: (value source) protocol: (value protocol)].
	data metaclassSpec classDict keysAndValuesDo: [:key :value | 
		(module theMetaClassSpecification classDict at: key asSymbol) updateWith: value].

	^ module