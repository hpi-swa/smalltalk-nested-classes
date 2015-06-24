lookup
lookupNested: identifier in: node
	| cls outerSends |
	cls := lookupStart.
	outerSends := OrderedCollection new.

	[ cls notNil ] whileTrue: [
		cls isBehavior ifTrue: [
			cls isNestedGenerated 
				ifTrue: [ (cls specification classDict includesKey: identifier)
					ifTrue: [ node replaceWith: (self outerSend: identifier level: outerSends). ^ true ] ]
				ifFalse: [ " reached a class outside of the module system " ^ false ] .
			cls := cls outer.
			outerSends add: #outer ]
		ifFalse: [ " instance-side nesting "
			cls := cls class.
			outerSends add: #class ] ].
	
	^ false