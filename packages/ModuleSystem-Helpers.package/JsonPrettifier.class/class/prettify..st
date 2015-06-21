json
prettify: aJson
	^ self prettify: (ReadStream on: aJson) current: (WriteStream on: '') indent: 1  