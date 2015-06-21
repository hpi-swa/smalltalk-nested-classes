*ModuleSystem
proceed: v1 with: v2 with: v3 with: v4 with: v5
	| nextPartial |
	nextPartial := Processor activeProcess nextPartial.
	self assert: nextPartial numArgs = 5.
	thisContext privRefreshWith: nextPartial.
	