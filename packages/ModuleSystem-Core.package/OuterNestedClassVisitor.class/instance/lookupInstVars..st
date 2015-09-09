lookup
lookupInstVars: identifier
	" TODO: check if this is correct. Can we access class vars from the inst side? "
	^ (lookupStart allInstVarNames includes: identifier)
		or: [ lookupStart theMetaClass allInstVarNames includes: identifier ]
		or: [ lookupStart theNonMetaClass classVarNames includes: identifier ]