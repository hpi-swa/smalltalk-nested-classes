*ModuleSystem-Core
name
	name ifNotNil: [ ^ name ].
	(self respondsTo: #specification) ifTrue: [ ^ 'name method not set' ].
	^ super name