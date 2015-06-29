*ModuleSystem-Core
subclassWithInstVars: instVars classVars: classVars
	| cls classVarNames |
	cls := self subclassWithInstVars: instVars.
	classVarNames := (Scanner new scanFieldNames: classVars) collect: [ :x | x asSymbol ].
	cls declare: classVarNames.
	^ cls