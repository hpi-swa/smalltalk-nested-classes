wrapper
doesNotUnderstand: aMessage
	| selector rcvrClass nextOuter skipOuter |
	selector := aMessage selector.
	receiver isBehavior not
		ifTrue: [ rcvrClass := receiver class ] 
		ifFalse: [ rcvrClass := receiver ].

	"Dirty fix: not sure if this is correct here."
	rcvrClass asString asSymbol = selector
		ifTrue: [ ^ rcvrClass ].
		
	skipReceiver not & (rcvrClass respondsTo: selector)
		ifTrue: [ ^ rcvrClass perform: selector withArguments: aMessage arguments ].
	
	nextOuter := rcvrClass.
	skipOuter := false.
	enclosing do: [ :nextLex | | nextRvcrClass |
		nextOuter ifNotNil: [ nextOuter := nextOuter outer ].
		(skipOuter or: [ nextOuter isNil ] or: [ (nextOuter inheritsFrom: nextLex) not ])
			ifTrue: [ "Stick to lexical scope from now on" 
				nextRvcrClass := nextLex.
				skipOuter := true ]
			ifFalse: [ nextRvcrClass := nextOuter ].
		(nextRvcrClass respondsTo: selector)
			ifTrue: [ ^ nextRvcrClass perform: selector withArguments: aMessage arguments ] ]. 
	
"	enclosing do: [ :cls |
		(cls respondsTo: selector)
			ifTrue: [ ^ cls perform: selector withArguments: aMessage arguments ] ]."
		
	(Repository instance modules includesKey: selector) 
		ifTrue: [ ^ Repository instance moduleAt: selector ].
		
	^ Smalltalk globals at: aMessage selector ifAbsent: [ .
		super doesNotUnderstand: aMessage ]. 