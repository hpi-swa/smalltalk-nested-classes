accessing
theMetaClassSpecification: aSpec
	aSpec isMeta ifFalse: [ self error: 'not a meta class specification' ].
	metaclassSpec := aSpec.
	metaclassSpec theNonMetaClassSpecification: self.