initializing
initializeClass: class in: outer
	| shouldInitialize |
	shouldInitialize := super initializeClass: class.

	shouldInitialize ifTrue: [ "force class-side classes initialization"
		classDict keysDo: [ :key | class theNonMetaClass perform: key ].
		self installOuterMethod: class with: outer ].