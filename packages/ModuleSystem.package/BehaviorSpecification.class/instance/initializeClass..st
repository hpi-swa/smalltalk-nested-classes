initializing
initializeClass: class
	| shouldInitialize |
	shouldInitialize := class isInitialized not & class isAnonymous.
	shouldInitialize
		ifTrue: [ "anonymous and uninitialized"
			self installSpecification: class.
			self installNameMethod: class.
			self markGenerated: class.
			methodDict valuesDo: [ :spec | spec addToClass: class ] ]
		ifFalse: [ "do not initialize! TODO: install prefixed extension methods" ].
	^ shouldInitialize