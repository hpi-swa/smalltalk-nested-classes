accessing
resourceAt: name
	" TODO: nil check can be removed when setting up ModuleSystem for the next time. "
	resourceDict ifNil: [ resourceDict := Dictionary new ].
	^ resourceDict at: name