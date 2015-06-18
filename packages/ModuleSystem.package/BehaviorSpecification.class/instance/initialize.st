initializing
initialize
	super initialize.
	methodDict := Dictionary new.
	classDict := Dictionary new.
	instances := WeakIdentityKeyDictionary new.
	className := #'?'.