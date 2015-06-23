as yet unclassified
testLayeredMethod1Arg1ProceedMetaFull
	| layerAndSpec class layer |
	layerAndSpec := self preparedMetaFull1Arg1Proceed.
	class := layerAndSpec second.
	layer := layerAndSpec first.

	self assert: (class classMethod: 2) equals: 12.
	self assert: ([ class classMethod: 2 ] withLayer: layer) equals: 70.
	self assert: (class classMethod: 2) equals: 12.