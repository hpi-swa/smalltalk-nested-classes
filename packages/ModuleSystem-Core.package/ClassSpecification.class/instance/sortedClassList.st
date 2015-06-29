UI support
sortedClassList
	sortedClassList ifNil: [ sortedClassList := ModuleSystemViewHelper generateSortedClassListFor: self ].
	^ sortedClassList