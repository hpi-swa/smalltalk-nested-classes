accessing
initialize
	super initialize.
	
	" mapping outer to cached instances of myself (if nested class definition), aka class cache "
	instances := WeakIdentityKeyDictionary new.

	" mapping instances of myself to array of enclosing class and args "
	instantiations := WeakIdentityKeyDictionary new.

	" mapping owner classes to CompiledMethods of myself "
	compiledMethods := WeakIdentityKeyDictionary new.
	
	" variable names of parameters "
	parameters := Array new.