testing
testRepository
	| module repository |
	repository := Repository new.
	self assert: (repository specs isKindOf: Dictionary).
	module := ModuleSpecification new.
	module moduleName: 'testModule'.
	self assert: repository specs size equals: 0.
	repository addSpec: module.
	self assert: repository specs size equals: 1.
	self assert: (repository specs at: #testModule) equals: module.
	"Adding the same module will overwrite it"
	repository addSpec: module.
	self assert: repository specs size equals: 1.
	[ repository reset ] on: Warning do: [ :ex | ex resume ].
	self assert: repository specs size equals: 0.

	