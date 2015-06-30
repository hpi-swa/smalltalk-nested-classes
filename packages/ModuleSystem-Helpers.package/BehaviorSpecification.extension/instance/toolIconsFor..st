*ModuleSystem-Helpers
toolIconsFor: selector
	latestInstance
		ifNil: [ ^ #() ]
		ifNotNil: [ | icon |
			icon := latestInstance toolIconSelector: selector.
			icon = #blank
				ifTrue: [ ^ #() ]
				ifFalse: [^ { icon } ] ].