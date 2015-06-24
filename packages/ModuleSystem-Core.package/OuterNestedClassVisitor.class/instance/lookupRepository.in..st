lookup
lookupRepository: identifier in: node
	(Repository instance modules includesKey: identifier) ifTrue: [ | access |
		access := RBMessageNode 
			receiver: (RBMessageNode receiver: (RBVariableNode named: 'Repository') selector: #instance)
			selector: #moduleAt:
			arguments: { RBLiteralValueNode value: identifier }.
		node replaceWith: access.  
		^ true ].
	^ false