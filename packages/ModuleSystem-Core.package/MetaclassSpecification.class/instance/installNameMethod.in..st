instantiation
installNameMethod: class in: outer
	" TODO: change method name and move to ClassSpecification. "
	| name |
	outer 
		ifNil: [ name := self theNonMetaClassSpecification className ]
		ifNotNil: [ name := outer name, ' ', self selector ].
	outer ifNotNil: [ | nextFrame | "TODO: dirty hack. Show where the inherited class was defined." 
		nextFrame := thisContext sender.
		[ nextFrame notNil and: [ nextFrame method methodClass isNestedGenerated not ] ] 
			whileTrue: [ nextFrame := nextFrame sender ].
		nextFrame
			ifNil: [ " Don't know in which class/method the class was generated "
				name := name,  '[?]' ]
			ifNotNil: [ | definitionOrigin | " Show class only if definition was inherited "
				definitionOrigin := nextFrame method methodClass.
				definitionOrigin theNonMetaClass ~~ outer
					ifTrue: [ name := name, ' [', definitionOrigin theNonMetaClass name, ']' ] ] ].
	class theNonMetaClass setName: name.