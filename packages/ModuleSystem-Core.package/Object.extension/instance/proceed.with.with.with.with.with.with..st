*ModuleSystem-Core
proceed: v1 with: v2 with: v3 with: v4 with: v5 with: v6 with: v7
	| nextPartial |
	nextPartial := Processor activeProcess nextPartial.
	self assert: nextPartial numArgs = 7.
	thisContext privRefreshWith: nextPartial.
	