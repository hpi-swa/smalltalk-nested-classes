as yet unclassified
enclosing: classes
	^ self new
		enclosing: classes;
		skipReceiver: true;  
		yourself  