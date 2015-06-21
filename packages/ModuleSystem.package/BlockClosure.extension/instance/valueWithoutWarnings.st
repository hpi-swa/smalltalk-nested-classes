*ModuleSystem
valueWithoutWarnings
	| source value |
	source := (Object>>#notify:) getSource.
	Object compile: 'notify: aString ^ self'.
	value := self value.
	Object compile: source.