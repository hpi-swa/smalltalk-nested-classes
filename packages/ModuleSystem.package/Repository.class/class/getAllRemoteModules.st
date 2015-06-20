managing
getAllRemoteModules
	| data json |
	json := (WebClient httpGet: self gitHubAPIModules) content.
	data := Json readFrom: (ReadStream on: json).
	^ (data select: [:a | a name endsWith: '.json']) collect: [:a | a name copyFrom: 1 to: (a name size - 5)]