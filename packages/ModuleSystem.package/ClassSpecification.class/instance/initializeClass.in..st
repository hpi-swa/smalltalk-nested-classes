initializing
initializeClass: class in: outer
	| shouldInitialize |
	shouldInitialize := super initializeClass: class.

	"initialize meta class"
	metaclassSpec initializeClass: class class in: outer.

	^ shouldInitialize