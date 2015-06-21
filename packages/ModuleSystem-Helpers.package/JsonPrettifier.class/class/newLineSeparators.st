constants
newLineSeparators
	^ newLineSeparators ifNil: [ newLineSeparators := OrderedCollection with: $, ]