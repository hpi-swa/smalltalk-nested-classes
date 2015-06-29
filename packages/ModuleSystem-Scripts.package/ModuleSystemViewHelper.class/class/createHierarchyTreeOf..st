as yet unclassified
createHierarchyTreeOf: col
	"Partly copied from Browser class. Create a tree from a flat collection of classes"
	| transformed |
	transformed := col collect: [:ea | 
		| childs indexes |
		childs := col select: [:class | class expectedSuperSpecs size > 0 and: [class expectedSuperSpecs first = ea]].
		indexes := childs collect: [:child | col indexOf: child].
		ea -> indexes].
	transformed copy do: [:ea |
		ea value: (ea value collect: [:idx | 
			| val |
			val := transformed at: idx.
			transformed at: idx put: nil.
			val])].
	^ transformed select: [:ea | ea notNil].
