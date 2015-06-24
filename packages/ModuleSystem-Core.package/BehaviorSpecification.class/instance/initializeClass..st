instantiation
initializeClass: class
	methodDict valuesDo: [ :spec | spec addToClass: class ].
	self expectedTypes: class expectedTypeDescriptor.  