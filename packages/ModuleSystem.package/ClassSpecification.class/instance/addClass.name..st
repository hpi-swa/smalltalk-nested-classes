modifying
addClass: class name: name
	super addClass: class name: name.
	class className: ('(a ', className, ') ', name) asSymbol.