*ModuleSystem-Core
addLayerComposition: anOrderedCollection forContext: methodContext
	proceedQueues ifNil: [ proceedQueues := WeakIdentityKeyDictionary new ].
	proceedQueues at: methodContext put: anOrderedCollection.