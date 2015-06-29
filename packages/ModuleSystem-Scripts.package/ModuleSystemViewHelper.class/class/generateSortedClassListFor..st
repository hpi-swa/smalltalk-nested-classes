as yet unclassified
generateSortedClassListFor: classSpec
	"TODO: refactor this ugly code!"
	| specs tree result |
	specs := (classSpec classDict values asOrderedCollection 
		addAll: classSpec theMetaClassSpecification classDict values) sorted: [ :a :b | a selector <= b selector ].
	tree := self createHierarchyTreeOf: specs.
	result := OrderedCollection new.
	self flattenHierarchyTree: tree on: result.
	^ result asArray  