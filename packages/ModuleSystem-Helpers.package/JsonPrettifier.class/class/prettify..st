json
prettify: aJson
	^ self prettify: (ReadStream on: aJson) current: (WriteStream on: String new) indent: 1  