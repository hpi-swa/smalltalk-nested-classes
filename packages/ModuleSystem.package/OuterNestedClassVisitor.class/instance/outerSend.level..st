as yet unclassified
outerSend: identifier level: outerLevel
	| rcvr lvl |
	rcvr := RBVariableNode named: 'self'. 
	lvl := outerLevel.

	[ lvl > 0 ] whileTrue: [
		rcvr := RBMessageNode receiver: rcvr selector: #outer.
		 lvl := lvl - 1 ].

	^ RBMessageNode receiver: rcvr selector: identifier