initializing
initialize
	super initialize.
	self theMetaClassSpecification: MetaclassSpecification new.

	" only for UI purposes: a list of all super specs from the last time of instantiation "
	expectedSuperSpecs := WeakArray new.