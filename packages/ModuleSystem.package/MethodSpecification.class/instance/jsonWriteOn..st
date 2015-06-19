serialize
jsonWriteOn: aStream
	| output |
	output := Dictionary new. 
	output at: #protocol put: self protocol.
	output at: #source put: self source.
	^ output jsonWriteOn: aStream