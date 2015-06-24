modifying
classAt: name ifAbsentPut: aBlock
	| class |
	class := classDict 
		at: name
		ifAbsent: [ | newClass | 
			newClass := aBlock value. 
			self addClass: newClass name: name. 
			newClass ].
	^ class