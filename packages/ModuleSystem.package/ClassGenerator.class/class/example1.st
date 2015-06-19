as yet unclassified
example1
	| spec innerSpec |
	spec := ClassSpecification new.

	spec addMethodString: 'Inner < class > ^ target subclass' protocol: 'generator'.
	innerSpec := spec classDict at: #Inner.
	innerSpec addMethodString: 'collect: aBlock | new | new := OrderedCollection new. self do: [ :item | (aBlock value: item) ifTrue: [ new add: item ] ]. ^ new' protocol: 'filter'.
	
	^ spec generateWithSubclass: ClassGenerator
	