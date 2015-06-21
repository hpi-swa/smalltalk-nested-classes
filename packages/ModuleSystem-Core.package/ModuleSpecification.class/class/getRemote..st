serialization
getRemote: aModuleName
	| response |
	response := WebClient httpGet: self baseUrl, aModuleName, '.json'.
	(response code == 200)
		ifTrue:  [ ^ self new: aModuleName fromJson: response content ]
		ifFalse: [ ^nil ]