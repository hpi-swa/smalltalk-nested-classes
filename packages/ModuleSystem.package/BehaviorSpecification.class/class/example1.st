as yet unclassified
example1
	| module moduleMeta classNested classNestedMeta instNested instNestedMeta |
	module := ClassSpecification new.
	moduleMeta := MetaclassSpecification new.
	module theMetaClassSpecification: moduleMeta.
	moduleMeta addMethodString: 'classMethod ^ 1' protocol: 'foo'.
	module addMethodString: 'instMethod ^ 2' protocol: 'foo'.

	moduleMeta addMethodString: 'ClassNested < class > ^ Object subclass' protocol: 'foo'.	
	classNested := ClassSpecification new.
	classNestedMeta := MetaclassSpecification new.
	classNested theMetaClassSpecification: classNestedMeta.
	classNestedMeta addMethodString: 'classMethod ^ 3' protocol: 'foo'.
	classNested addMethodString: 'instMethod ^ 4' protocol: 'foo'.
	moduleMeta addClass: classNested name: #ClassNested.

	module addMethodString: 'InstNested < class > ^ Object subclass' protocol: 'foo'.
	instNested := ClassSpecification new.
	instNestedMeta := MetaclassSpecification new.
	instNested theMetaClassSpecification: instNestedMeta.
	instNested addMethodString: 'instMethod ^ 5' protocol: 'foo'.
	instNestedMeta addMethodString: 'classMethod ^ 6' protocol: 'foo'.
	module addClass: instNested name: #InstNested.

	^ module