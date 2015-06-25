*ModuleSystem-Core
isSuperCall
	^ sender receiver == receiver 
		& (sender method selector == method selector )