serializing
jsonWriteOn: aStream
	| output |
	output := Dictionary new. 
	output at: #className put: self className.
	output at: #classDict put: self classDict.
	output at: #methodDict put: self methodDict.
	output at: #metaclassSpec put: self theMetaClassSpecification.
	output at: #moduleName put: self moduleName.
	^ output jsonWriteOn: aStream