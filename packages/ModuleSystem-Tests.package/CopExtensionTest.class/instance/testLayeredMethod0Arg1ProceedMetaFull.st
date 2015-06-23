as yet unclassified
testLayeredMethod0Arg1ProceedMetaFull
	| layerAndSpec class layer |
	layerAndSpec := self preparedMetaFull0Arg1Proceed.
	class := layerAndSpec second.
	layer := layerAndSpec first.

	self assert: class classMethod equals: 10.
	self assert: ([ class classMethod ] withLayer: layer) equals: 12.
	self assert: class classMethod equals: 10.