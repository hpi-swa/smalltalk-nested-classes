accessing
methodsFor: aProtocol
	aProtocol = '(all)' ifTrue: [ ^ methodDict values, self theMetaClassSpecification methodDict values ].
	^ (methodDict values select: [ :spec | spec protocol == aProtocol ]),
		(self theMetaClassSpecification methodDict values select: [ :spec | spec protocol == aProtocol ])