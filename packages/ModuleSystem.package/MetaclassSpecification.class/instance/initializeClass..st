modifying
initializeClass: class
	super initializeClass: class.

	"force class-side classes initialization"
	classDict keysDo: [ :key | class theNonMetaClass perform: key ].