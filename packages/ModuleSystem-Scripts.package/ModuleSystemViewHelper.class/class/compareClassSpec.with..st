as yet unclassified
compareClassSpec: spec1 with: spec2
	| parentCachedSorted |
	parentCachedSorted := spec1 isModule 
		ifTrue: [ #() ] 
		ifFalse: [ spec1 parent isMeta 
			ifTrue: [ spec1 parent theNonMetaClassSpecification sortedClassList ] 
			ifFalse: [ spec1 parent sortedClassList ] ].
	(parentCachedSorted includes: spec1) & (parentCachedSorted includes: spec2) not ifTrue: [ ^ true ].
	(parentCachedSorted includes: spec2) & (parentCachedSorted includes: spec1) not ifTrue: [ ^ false ].
	(parentCachedSorted includes: spec1) & (parentCachedSorted includes: spec2)
		ifTrue: [ ^ (parentCachedSorted indexOf: spec1) < (parentCachedSorted indexOf: spec2) ].
 	^ spec1 selector <= spec2 selector