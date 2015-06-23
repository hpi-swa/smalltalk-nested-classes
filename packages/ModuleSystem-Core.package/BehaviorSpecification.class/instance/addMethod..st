modifying
addMethod: methodSpec
	methodSpec isMethodSpec ifFalse: [ self error: 'method specification expected' ].
	methodDict at: methodSpec selector put: methodSpec.
	methodSpec parent: self.
	methodSpec isPartial: self isPartial | self isLayer.