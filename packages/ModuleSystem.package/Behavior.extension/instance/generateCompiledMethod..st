*ModuleSystem
generateCompiledMethod: code
	| methodAndNode |
	methodAndNode  := self
		compile: code
		notifying: nil
		trailer: (self defaultMethodTrailerIfLogSource: true)
		ifFail: [^nil].
	methodAndNode method putSource: code fromParseNode: methodAndNode node inFile: 2
			withPreamble: [:f | f cr; nextPut: $!; nextChunkPut: 'Behavior method'; cr].
	^ methodAndNode method