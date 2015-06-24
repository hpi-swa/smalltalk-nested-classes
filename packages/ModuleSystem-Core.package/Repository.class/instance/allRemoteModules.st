Github API
allRemoteModules
	| data json |
	json := (WebClient httpGet: self githubURL) content.
	data := Json readFrom: (ReadStream on: json).
	^ (data select: [:a | a name endsWith: '.json']) collect: [:a | a name copyFrom: 1 to: (a name size - 5)]