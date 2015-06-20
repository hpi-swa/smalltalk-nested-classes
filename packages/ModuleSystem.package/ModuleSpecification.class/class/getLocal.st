serialization
getLocal
	| file fileName moduleName json |
	file := FileList2 modalFileSelectorForSuffixes: {'json'}.
	fileName := (FileUrl absoluteFromText: file fullName) fileName.
	moduleName := fileName copyFrom: 1 to: (fileName size - 5).
	file isNil
		ifTrue: [ ^ nil ]
		ifFalse: [ json := file contentsOfEntireFile.
				^ self new: moduleName fromJson: json ]