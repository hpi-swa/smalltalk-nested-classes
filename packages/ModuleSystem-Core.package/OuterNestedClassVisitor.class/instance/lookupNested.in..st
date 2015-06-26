lookup
lookupNested: identifier in: node
	| spec outerSends |
	spec := lookupStart specification.	 " we are in method compilation, so cls is a class (not self but self class)! "
	outerSends := OrderedCollection new.

	[ spec notNil ] whileTrue: [
		(spec hasClass: identifier)
			ifTrue: [ node replaceWith: (self outerSend: identifier level: outerSends). ^ true ].
		(spec isMeta not and: [ spec theMetaClassSpecification hasClass: identifier ]) 
			ifTrue: [ " found on class side "
				outerSends add: #class.
				node replaceWith: (self outerSend: identifier level: outerSends). ^ true ].
		spec := spec parent.
		outerSends add: #outer ].
	
	^ false