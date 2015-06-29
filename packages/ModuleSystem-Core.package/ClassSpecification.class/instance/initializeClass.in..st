instantiation
initializeClass: class in: outer
	self assert: class isMeta not.
	
	self isPartial
		ifTrue: [ 
			self initializePartialClass: class in: outer.
			self theMetaClassSpecification initializePartialClass: class class in: outer "TODO: in this case 'outer' != layer" ]
		ifFalse: [ | isSuperCall |
			isSuperCall := thisContext sender sender sender isSuperCall.

			(self shouldInitialize: class) ifFalse: [ self error: 'class already initialized' ].

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
			metaclassSpec postInitializeClass: class class ].