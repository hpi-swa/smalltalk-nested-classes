as yet unclassified
multiIconFor: anArray
	| form |
	anArray ifNil: [ ^ UiFugueIcons crossCircleIcon ].
	form := Form new setExtent:  0@16 depth: 32.  
	anArray do: [ :sym | | icon newForm |
		icon := self iconFor: sym.
		newForm := Form new setExtent: (form width + icon width)@16 depth: 32.
		newForm 
			copyBits: (Rectangle origin: 0@0 corner: form extent)
			from: form
			at: 0@0
			clippingBox: (Rectangle origin: 0@0 corner: form extent)
			rule: Form over
			fillColor: nil.
		newForm
			copyBits: (Rectangle origin: 0@0 corner: icon extent)
			from: icon
			at: form width @ (16 - icon height / 2)
			clippingBox: (Rectangle origin: form width @ 0 corner: newForm extent)
			rule: Form over
			fillColor: nil.
		form := newForm ].
	^ form