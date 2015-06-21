serialization
getLocal
	| file fileName moduleName json |
	file := FileList2 modalFileSelectorForSuffixes: {'json'}.
	file isNil
		ifTrue: [ ^ nil ]
		ifFalse: [fileName := (FileUrl absoluteFromText: file fullName) fileName.
				moduleName := fileName copyFrom: 1 to: (fileName size - 5).
				json := file contentsOfEntireFile.
				^ self new: moduleName fromJson: json ]