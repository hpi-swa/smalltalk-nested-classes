instantiation
initializeClass: class in: outer withArguments: args
	 | isSuperCall |
	self assert: class isMeta not.
	
	isSuperCall := thisContext sender sender sender isSuperCall.

	"(self shouldInitialize: class) ifFalse: [ self error: 'class already initialized' ]."
			
	" TODO: add arguments to array for parameterized classes "
	self theMethodSpec atInstantiation: class put: { outer }.
	self installArgumentMethods: args for: class.
	
	" initialize meta class "
	metaclassSpec initializeClass: class class in: outer isSuper: isSuperCall.

	" outer must be present on instance side, otherwise there would be no way to get an early-bound outer "
	self installOuterMethod: class with: outer.

	" update super specifications (UI only) "
	" TODO: make this a weak array! "
	expectedSuperSpecs := class allSuperclasses 
		select: [ :cls | cls isNestedGenerated ]
		thenCollect: [ :cls | cls specification ].
	sortedClassList := nil.

	super initializeClass: class.
			
	" call class-side initializer "
	metaclassSpec postInitializeClass: class class.