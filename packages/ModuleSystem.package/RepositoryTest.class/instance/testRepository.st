testing
testRepository
	| module size |
	self assert: (Repository modules isKindOf: Dictionary).
	module := ModuleSpecification new.
	module moduleName: 'testRepository'.
	size := Repository modules size.
	Repository add: module.
	self assert: (Repository modules size) equals: size + 1.
	self assert: (Repository modules at: #testRepository) equals: module.
	"Adding the same module will overwrite it"
	Repository add: module.
	self assert: (Repository modules size) equals: size + 1.
	"Resetting the Repository is not being tested, because this would remove all modules from the image"
	
	
	