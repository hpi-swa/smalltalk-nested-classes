instantiation
postInitializeClass: class
	" run class initializer "
	class theNonMetaClass initialize.

	" force class-side nested classes initialization "
	classDict keysDo: [ :key | 
		key isUnary ifTrue: [ class theNonMetaClass perform: key ] ].