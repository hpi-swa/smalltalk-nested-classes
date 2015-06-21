accessing
initialize
	super initialize.

	isLayered := false.

	" mapping outer to cached instances of myself (if nested class definition) "
	instances := WeakIdentityKeyDictionary new.

	" mapping layers to layered CompiledMethods of myself "
	layeredMethods := WeakIdentityKeyDictionary new.

	" mapping owner classes to CompiledMethods of myself "
	compiledMethods := WeakIdentityKeyDictionary new.