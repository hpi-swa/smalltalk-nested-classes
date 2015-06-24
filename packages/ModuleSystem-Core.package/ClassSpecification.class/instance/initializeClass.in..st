instantiation
initializeClass: class in: outer
	self assert: class isMeta not.
	
	self isPartial
		ifTrue: [ 
			self initializePartialClass: class in: outer.
			self theMetaClassSpecification initializePartialClass: class class in: outer "TODO: in this case 'outer' != layer" ]
		ifFalse: [ " initialize meta class "
			metaclassSpec initializeClass: class class in: outer.
			super initializeClass: class ].