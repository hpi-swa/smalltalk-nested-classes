as yet unclassified
enclosing: classes receiver: receiver skipReceiver: aBoolean
	^ self new
		enclosing: classes;
		receiver: receiver;
		skipReceiver: aBoolean;  
		yourself  