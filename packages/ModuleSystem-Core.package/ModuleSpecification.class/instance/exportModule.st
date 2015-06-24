serializing
exportModule
	| path file |
      path := FileList2 modalFolderSelector.
	path ifNotNil: [[
	file := FileStream newFileNamed: (path fullPathFor: self moduleName, '.json').
	file nextPutAll: self asPrettyJson.
	file close ] ensure: [ file close ]]