*ModuleSystem
queueForContext: methodContext
	| context |
	context := methodContext.
	[ context isNil or: [ proceedQueues includesKey: context ] ] whileFalse: [
		context := context sender ].
	context
		ifNil: [ self error: 'queue not found for context' ]
		ifNotNil: [ ^ proceedQueues at: context ].