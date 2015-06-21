as yet unclassified
acceptVariableNode: aNode
	| identifier cls outerLevel |
	identifier := aNode token value asSymbol.
	(identifier = #self) | (identifier = #thisContext) | (identifier = #super) ifTrue: [ ^ self ].
	(temps includes: identifier) ifTrue: [ ^ self ].
	(lookupStart allInstVarNames includes: identifier) ifTrue: [ ^ self ].
	Smalltalk at: identifier ifPresent: [ :global | ^ self ].

	cls := lookupStart.
	outerLevel := 0.

	[ cls notNil ] whileTrue: [
		cls isNestedGenerated ifTrue: [
			(cls specification classDict includesKey: identifier)
				ifTrue: [ aNode replaceWith: (self outerSend: identifier level: outerLevel). ^ self ] 
		"TODO: check for nested class on class side" ].
		cls := cls outer.
		outerLevel := outerLevel + 1 ].