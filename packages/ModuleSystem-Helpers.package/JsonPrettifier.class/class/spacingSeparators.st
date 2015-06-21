constants
spacingSeparators
	^ spacingSeparators ifNil: [ spacingSeparators := OrderedCollection with: {$:. $"} with: {$:. ${} with: {$:. $[} ]