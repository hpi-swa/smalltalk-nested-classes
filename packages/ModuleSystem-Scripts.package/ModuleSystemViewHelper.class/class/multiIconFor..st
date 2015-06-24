as yet unclassified
multiIconFor: anArray
	| form pos |
	anArray ifNil: [^ UiFugueIcons crossCircleIcon ].
	form := Form new setExtent: (16 * anArray size)@16 depth: 32.
	pos := 0.
	anArray do: [:symbol |
		form copyBits: (Rectangle origin: 0@0 corner: 16@16) from: (self iconFor: symbol)
			at: (pos)@0 clippingBox: (Rectangle origin: (pos)@0 corner: (pos+16)@16) rule: Form over fillColor: nil.   
		pos := pos + 16.
	].
	^ form