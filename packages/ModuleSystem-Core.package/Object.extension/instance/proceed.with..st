*ModuleSystem-Core
proceed: v1 with: v2
	| nextPartial |
	nextPartial := Processor activeProcess nextPartial.
	self assert: nextPartial numArgs = 2.
	thisContext privRefreshWith: nextPartial.
	