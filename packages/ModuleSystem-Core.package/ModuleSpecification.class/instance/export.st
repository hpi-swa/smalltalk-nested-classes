serializing
export
	| path file |
      path := FileList2 modalFolderSelector.
	path ifNotNil: [[
	file := FileStream newFileNamed: (path fullPathFor: self moduleName, '.json').
	file nextPutAll: (JsonPrettifier prettify: self asJson).
	file close ] ensure: [ file close ]]