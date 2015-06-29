as yet unclassified
flattenHierarchyTree: classHierarchy on: col
	"Party copied from Browser class. Recursively add to col the names in classHierarchy indenting to show the hierarchical relationship."
	classHierarchy do: [:assoc |
		| class childs |
		class := assoc key.
		col add: class.
		childs := assoc value.
		self flattenHierarchyTree: childs on: col ].
	^ col