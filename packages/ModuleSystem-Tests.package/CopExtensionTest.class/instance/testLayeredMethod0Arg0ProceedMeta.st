as yet unclassified
testLayeredMethod0Arg0ProceedMeta
	| layerAndSpec class |
	layerAndSpec := self preparedSpecMeta.
	class := layerAndSpec second generateModule.

	self assert: class classMethod equals: 10.
	self assert: ([ class classMethod ] withLayer: layerAndSpec first) equals: 11.
	self assert: class classMethod equals: 10.