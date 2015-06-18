as yet unclassified
example1
	| spec metaSpec innerSpec innerMetaSpec |
	spec := ClassSpecification new.
	metaSpec := MetaclassSpecification new.
	spec theMetaClassSpecification: metaSpec.

	innerSpec := ClassSpecification new.
	innerMetaSpec := MetaclassSpecification new.
	innerSpec theMetaClassSpecification: innerMetaSpec.
	spec addClass: innerSpec name: #Inner.
	spec addMethodString: 'Inner < class > ^ target subclass' protocol: 'generator'.
	innerSpec addMethodString: 'select: aBlock | new | new := OrderedCollection new. self do: [ :item | (aBlock value: item) ifTrue: [ new add: item ] ]. ^ new' protocol: 'filter'.
	
	^ spec generateWithSubclass: ClassGenerator
	