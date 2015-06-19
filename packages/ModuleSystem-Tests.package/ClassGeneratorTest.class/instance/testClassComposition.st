as yet unclassified
testClassComposition
	| composed result |
	composed := self preparedBaseClass << self preparedGenerator.
	self assert: composed isBehavior.
	self deny: composed isMeta.

	self assert: (composed new collect: [ :x | x > 2 ]) equals: (OrderedCollection with: 4 with: 9).

	result := OrderedCollection new.
	composed new do: [ :x | x > 2 ifTrue: [ result add: x ] ].
	self assert: result equals: (OrderedCollection with: 4 with: 9).