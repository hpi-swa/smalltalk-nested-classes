*ModuleSystem
proceed: v1 with: v2 with: v3 with: v4 with: v5 with: v6
	| nextPartial |
	nextPartial := Processor activeProcess nextPartial.
	self assert: nextPartial numArgs = 6.
	thisContext privRefreshWith: nextPartial.
	