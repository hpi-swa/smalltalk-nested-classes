as yet unclassified
testLayeredMethod0Arg0ProceedMetaFull
	| layerAndSpec class layer |
	layerAndSpec := self preparedMetaFull.
	class := layerAndSpec second.
	layer := layerAndSpec first.

	self assert: class classMethod equals: 10.
	self assert: ([ class classMethod ] withLayer: layer) equals: 11.
	self assert: class classMethod equals: 10.