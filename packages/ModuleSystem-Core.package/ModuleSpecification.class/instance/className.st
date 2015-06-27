serializing
className
	self moduleName
		ifNil: [ ^ 'UnnamedModule', (100000 atRandom) asString ]
		ifNotNil: [ ^ self moduleName ].