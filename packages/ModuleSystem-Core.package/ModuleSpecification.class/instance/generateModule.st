instantiation
generateModule
	| superclass |
	moduleName = #ModuleSystem
		ifTrue: [ " ModuleSystem bootstrapping " superclass := Module ]
		ifFalse: [ 
			Repository instance isBootstrapped 
				ifFalse: [ self error: 'ModuleSystem is not bootstrapped. Please install module ModuleSystem.' ].
			superclass := (Repository instance moduleAt: #ModuleSystem) defaultSuperclass ].
	
	^ self generateWithSubclass: superclass