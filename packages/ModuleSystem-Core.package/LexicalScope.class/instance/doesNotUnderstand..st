wrapper
doesNotUnderstand: aMessage
	| selector rcvrClass |
	selector := aMessage selector.
	receiver isBehavior not
		ifTrue: [ rcvrClass := receiver class ] 
		ifFalse: [ rcvrClass := receiver ].
		
	(rcvrClass respondsTo: selector)
		ifTrue: [ ^ rcvrClass perform: selector withArguments: aMessage arguments ].
	enclosing do: [ :cls |
		" send message to class "
		(cls respondsTo: selector)
			ifTrue: [ ^ cls perform: selector withArguments: aMessage arguments ] ].
		
	(Repository instance modules includesKey: selector) 
		ifTrue: [ ^ Repository instance moduleAt: selector ].
		
	^ Smalltalk globals at: aMessage selector ifAbsent: [ .
		super doesNotUnderstand: aMessage ]. 