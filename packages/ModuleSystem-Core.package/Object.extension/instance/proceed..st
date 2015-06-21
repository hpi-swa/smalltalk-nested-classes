*ModuleSystem-Core
proceed: v1
	| nextPartial |
	nextPartial := Processor activeProcess nextPartial.
	self assert: nextPartial numArgs = 1.
	thisContext privRefreshWith: nextPartial.
	