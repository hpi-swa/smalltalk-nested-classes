modifying
loadLocalModule
	| folder |
	folder := FileList2 modalFolderSelector.
	folder isNil
		ifTrue: [ ^ nil ]
		ifFalse: [ self addSpec: (ModuleSpecification loadFrom: folder) ]