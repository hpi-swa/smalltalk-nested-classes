serializing
exportModule
	| path |
      path := FileList2 modalFolderSelector.
	path ifNotNil: [ self exportTo: path ]