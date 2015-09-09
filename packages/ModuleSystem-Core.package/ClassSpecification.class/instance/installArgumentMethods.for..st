instantiation
installArgumentMethods: args for: class
	self theMethodSpec parameters withIndexDo: [ :param :index | | method |
		class class compile: param, String crlf, '	^ #arg'.
		method := class class >> param asSymbol.
		
		" return value is first method literal "
		method literalAt: 1 put: (args at: index) ].