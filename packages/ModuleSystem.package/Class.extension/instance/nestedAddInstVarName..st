*ModuleSystem
nestedAddInstVarName: aString
	^ ClassBuilder new
		newSubclassOf: self superclass 
		type: #normal 
		instanceVariables: self instanceVariablesString, ' ', aString
		from: self

