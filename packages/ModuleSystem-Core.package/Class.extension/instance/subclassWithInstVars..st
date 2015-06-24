*ModuleSystem-Core
subclassWithInstVars: aString
	| cls| 
	cls := ClassBuilder new anonymousSubclassOf: self type: #normal instanceVariables: aString.
	cls class compile: 'isAnonymous ^ true'.
	^ cls