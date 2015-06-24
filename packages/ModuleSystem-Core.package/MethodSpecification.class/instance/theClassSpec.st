accessing
theClassSpec
	self isNestedClass
		ifTrue: [ ^ parent classAt: self selector ]
		ifFalse: [ self error: 'not a nested class method specification' ].