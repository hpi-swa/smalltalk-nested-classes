instantiation
generateWithSubclass: class
	| cls |
	cls := class subclass.
	self initializeClass: cls.
	^ cls