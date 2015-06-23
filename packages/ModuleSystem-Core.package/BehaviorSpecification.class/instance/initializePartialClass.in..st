instantiation
initializePartialClass: class in: outer
	" parital classes are defined within layers, so 'outer' is the layer "
	methodDict do: [ :partial | | baseMethodSpec |
		baseMethodSpec := class specification methodAt: partial selector.
		baseMethodSpec addPartial: partial in: outer for: outer ].