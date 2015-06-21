*ModuleSystem
proceed: v1 with: v2 with: v3 with: v4
	| nextPartial |
	nextPartial := Processor activeProcess nextPartial.
	self assert: nextPartial numArgs = 4.
	thisContext privRefreshWith: nextPartial.
	