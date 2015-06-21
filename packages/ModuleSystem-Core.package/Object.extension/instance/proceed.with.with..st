*ModuleSystem-Core
proceed: v1 with: v2 with: v3
	| nextPartial |
	nextPartial := Processor activeProcess nextPartial.
	self assert: nextPartial numArgs = 3.
	thisContext privRefreshWith: nextPartial.
	