accessing
install
	self assert: moduleName isString & moduleName notEmpty.
	Repository instance modules at: moduleName asSymbol put: (self generateModule).