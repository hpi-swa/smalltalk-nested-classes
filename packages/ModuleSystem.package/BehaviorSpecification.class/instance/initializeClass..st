initializing
initializeClass: class
	class isInitialized not & class isAnonymous
		ifTrue: [ "anonymous and uninitialized"
			self installSpecification: class.
			self installNameMethod: class.
			self markGenerated: class.
			methodDict valuesDo: [ :spec | spec addToClass: class ] ]
		ifFalse: [ self halt. "do not initialize! TODO: install prefixed extension methods" ].