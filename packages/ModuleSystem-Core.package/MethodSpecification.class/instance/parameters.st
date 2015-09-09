accessing
parameters
	" TODO: can remove nil check with next filein "
	parameters ifNil: [ ^ Array new ].
	^ parameters