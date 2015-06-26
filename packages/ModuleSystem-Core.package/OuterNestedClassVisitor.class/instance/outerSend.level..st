lookup
outerSend: identifier level: sends
	| rcvr isEarlyBound |
	isEarlyBound := sends notEmpty and: [ sends first = #outer ].
	isEarlyBound 
		ifTrue: [ rcvr := RBVariableNode named: 'outer'. sends removeFirst ]
		ifFalse: [ rcvr := RBVariableNode named: 'self' ].

	[ sends notEmpty ] whileTrue: [
		rcvr := RBMessageNode receiver: rcvr selector: sends removeFirst ].

	^ RBMessageNode receiver: rcvr selector: identifier