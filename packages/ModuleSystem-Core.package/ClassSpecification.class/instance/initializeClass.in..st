instantiation
initializeClass: class in: outer
	self assert: class isMeta not.
	
	(self shouldInitialize: class) ifTrue: [
		"initialize meta class"
		metaclassSpec initializeClass: class class in: outer.

		super initializeClass: class ].