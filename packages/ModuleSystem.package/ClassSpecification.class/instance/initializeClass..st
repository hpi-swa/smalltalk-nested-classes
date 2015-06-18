initializing
initializeClass: class
	super initializeClass: class.

	"initialize meta class"
	metaclassSpec initializeClass: class class.