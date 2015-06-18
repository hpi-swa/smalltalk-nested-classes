*ModuleSystem
anonymousSubclassOf: newSuper type: type instanceVariables: instVars
	"Create a new subclass of the given superclass with the given specification."
	| newFormat newClass |
	"Compute the format of the new class"
	newFormat := 
		self computeFormat: type 
			instSize: instVars size 
			forSuper: newSuper 
			ccIndex: 0.
	newFormat == nil ifTrue:[^nil].
	newClass := self privateNewSubclassOf: newSuper from: nil.
	newClass 
		superclass: newSuper
		methodDictionary: MethodDictionary new
		format: newFormat;
		setInstVarNames: instVars.
	^newClass