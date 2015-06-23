modifying
addClass: classSpec name: name
	classSpec isClassSpec ifFalse: [ self error: 'class specification expected' ].
	classSpec isMeta ifTrue: [ self error: 'meta class specifications not allowed' ].
	classDict at: name put: classSpec.
	classSpec parent: self.
	classSpec isPartial: self isLayer.