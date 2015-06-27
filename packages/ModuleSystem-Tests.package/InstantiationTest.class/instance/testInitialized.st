testing
testInitialized
	| class spec |
	class := Object subclass.
	spec := ModuleSpecification new.
	
	spec initializeClass: class in: nil.
	self assert: class isInitialized.
	self assert: class class isInitialized.

	class := Object subclass.
	self deny: class isInitialized.
	self deny: class class isInitialized.