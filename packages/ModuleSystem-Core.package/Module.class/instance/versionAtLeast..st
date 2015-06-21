as yet unclassified
versionAtLeast: aNumber
	< class >
	| versions |
	versions := ((self class selectors select: [ :sel | sel beginsWith: #Version ]) 
		collect: [ :ver | (ver findTokens: #Version) first asInteger ]) sorted reversed.
	^ self perform: (#Version, (versions 
		detect: [ :ver | ver >= aNumber ] 
		ifNone: [ self error: 'requested version >=', aNumber asString, ' but not present in module' ]))