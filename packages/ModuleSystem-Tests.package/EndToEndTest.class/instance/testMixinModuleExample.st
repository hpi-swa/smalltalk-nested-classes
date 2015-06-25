testing
testMixinModuleExample
	| module inst |
	module := (Repository instance specAt: #ActiveRecordExample) generateModule.

	self assert: module Accessors isBehavior.
	self assert: module Accessors isNestedGenerated.
	self assert: module StudentModel isBehavior.
	self assert: module StudentModel isNestedGenerated.

	inst := module StudentModel example.
	self assert: inst asString equals: '[ a Student: John Doe ]'.
	
	inst registrationNo: '999999'.
	self assert: inst registrationNo equals: 999999.

	self assert: inst validate.
	
	inst firstName: 'john'.
	self deny: inst validateFirst.
	self deny: inst validate.