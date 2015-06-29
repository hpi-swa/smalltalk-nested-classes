*ModuleSystem-Core
subclassWithInstVars: aString
	| cls instVarNames | 
	instVarNames := Scanner new scanFieldNames: aString. 
	cls := ClassBuilder new anonymousSubclassOf: self type: #normal instanceVariables: instVarNames.
	cls class compile: 'isAnonymous ^ true'.
	^ cls