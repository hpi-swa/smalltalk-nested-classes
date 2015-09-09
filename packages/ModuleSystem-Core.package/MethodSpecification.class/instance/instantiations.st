accessing
instantiations
	" TODO: lazy initializer can be removed eventually "
	instantiations ifNil: [ instantiations := WeakIdentityKeyDictionary new ].
	
	^ instantiations