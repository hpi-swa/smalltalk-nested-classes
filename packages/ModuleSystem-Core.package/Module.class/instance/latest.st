as yet unclassified
latest
	< class >
	| versions |
	versions := ((self class selectors select: [ :sel | sel beginsWith: #Version ]) 
		collect: [ :ver | (ver findTokens: #Version) first asInteger ]) sorted.
	^ self perform: (#Version, versions last) asSymbol