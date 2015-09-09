modifying
atInstantiation: class put: array
	instantiations ifNil: [ instantiations := WeakIdentityKeyDictionary new ].
	instantiations at: class put: array.
	