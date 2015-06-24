lookup
outerSend: identifier level: sends
	| rcvr |
	rcvr := RBVariableNode named: 'self'. 

	[ sends notEmpty ] whileTrue: [
		rcvr := RBMessageNode receiver: rcvr selector: sends removeFirst ].

	^ RBMessageNode receiver: rcvr selector: identifier