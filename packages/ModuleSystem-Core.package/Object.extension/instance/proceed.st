*ModuleSystem-Core
proceed
	| nextPartial |
	nextPartial := Processor activeProcess nextPartial.
	self assert: nextPartial numArgs = 0.
	thisContext privRefreshWith: nextPartial.
	