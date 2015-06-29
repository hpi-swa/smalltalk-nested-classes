instantiation
postInitializeClass: class
	" run class initializer "
	class theNonMetaClass initialize.

	" force class-side nested classes initialization "
	classDict keysDo: [ :key | class theNonMetaClass perform: key ].