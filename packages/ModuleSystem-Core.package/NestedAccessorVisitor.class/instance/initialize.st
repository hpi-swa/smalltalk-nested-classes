as yet unclassified
initialize
	super initialize.
	tempNode := RBVariableNode named: 'returnValue'.
	instDictNode := RBLiteralValueNode value: #DICT.
	selfNode := RBVariableNode named: 'self'.
	specNode := RBLiteralValueNode value: #SPEC.
	thisContextNode := RBVariableNode named: 'thisContext'.