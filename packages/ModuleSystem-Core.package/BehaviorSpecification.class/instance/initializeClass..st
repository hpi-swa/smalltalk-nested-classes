instantiation
initializeClass: class
	methodDict valuesDo: [ :spec | spec addToClass: class ].
	expectedTypes := class expectedTypeDescriptor.

	" store latest instance for UI purposes "
	latestInstance := class.