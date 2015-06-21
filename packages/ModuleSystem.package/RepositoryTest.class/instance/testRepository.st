testing
testRepository
	| module size |
	self assert: (Repository modules isKindOf: Dictionary).
	Repository modules removeKey: #testModule ifAbsent: [].
	module := ModuleSpecification new.
	module moduleName: 'testModule'.
	size := Repository modules size.
	Repository add: module.
	self assert: (Repository modules size) equals: size + 1.
	self assert: (Repository modules at: #testModule) equals: module.
	"Adding the same module will overwrite it"
	Repository add: module.
	self assert: (Repository modules size) equals: size + 1.
	"Resetting the Repository is not being tested, because this would remove all modules from the image"
	Repository modules removeKey: #testModule ifAbsent: [].
	