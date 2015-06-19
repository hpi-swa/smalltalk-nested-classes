instantiation
initializeClass: class
	methodDict valuesDo: [ :spec | spec addToClass: class ].