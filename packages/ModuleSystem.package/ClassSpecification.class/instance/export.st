serialize
export
	| path file |
      path := FileList2 modalFolderSelector.
	path ifNotNil: [[
	file := FileStream newFileNamed: (path fullPathFor: 'module', self asOop , '.json').
	file nextPutAll: self asJson.
	file close ] ensure: [ file close ]]
	