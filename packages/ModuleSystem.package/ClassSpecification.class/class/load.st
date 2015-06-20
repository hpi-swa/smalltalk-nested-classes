serialize
load
	| file json |
	file := FileList2 modalFileSelectorForSuffixes: {'json'}.
	file isNil
		ifTrue: [^ nil]
		ifFalse: [ json := file contentsOfEntireFile.
				^ self fromJson: json ]
	