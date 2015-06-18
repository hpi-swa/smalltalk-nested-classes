as yet unclassified
example2
	| module moduleMeta classNested classNestedMeta instNested instNestedMeta |
	module := ClassSpecification new.
	moduleMeta := MetaclassSpecification new.
	module theMetaClassSpecification: moduleMeta.
	moduleMeta addMethodString: 'classMethod2 ^ 1' protocol: 'foo'.
	module addMethodString: 'instMethod2 ^ 2' protocol: 'foo'.

	moduleMeta addMethodString: 'ClassNested2 < class > ^ Object subclass' protocol: 'foo'.	
	classNested := ClassSpecification new.
	classNestedMeta := MetaclassSpecification new.
	classNested theMetaClassSpecification: classNestedMeta.
	classNestedMeta addMethodString: 'classMethod2 ^ 3' protocol: 'foo'.
	classNested addMethodString: 'instMethod2 ^ 4' protocol: 'foo'.
	moduleMeta addClass: classNested name: #ClassNested.

	module addMethodString: 'InstNested2 < class > ^ Object subclass' protocol: 'foo'.
	instNested := ClassSpecification new.
	instNestedMeta := MetaclassSpecification new.
	instNested theMetaClassSpecification: instNestedMeta.
	instNested addMethodString: 'instMethod2 ^ 5' protocol: 'foo'.
	instNestedMeta addMethodString: 'classMethod2 ^ 6' protocol: 'foo'.
	module addClass: instNested name: #InstNested2.

	^ module