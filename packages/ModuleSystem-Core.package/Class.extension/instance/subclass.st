*ModuleSystem-Core
subclass
	| cls| 
	cls := ClassBuilder new anonymousSubclassOf: self type: #normal instanceVariables: ''.
	cls class compile: 'isAnonymous ^ true'.
	^ cls