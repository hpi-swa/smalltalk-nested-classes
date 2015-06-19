as yet unclassified
d
	|d|
	d ifNotNil: [ ^d ].
	d := 123.
	thisContext pc: thisContext method initialPC.