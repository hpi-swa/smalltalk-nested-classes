as yet unclassified
enclosing: classes receiver: receiver
	^ self new
		enclosing: classes;
		receiver: receiver;
		skipReceiver: false;  
		yourself  