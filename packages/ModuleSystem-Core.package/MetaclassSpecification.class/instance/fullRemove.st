modifying
fullRemove
	self notify: 'Cannot remove a meta class specification. Proceed to remove the non meta class specification along with the meta class specification.'.
	self theNonMetaClassSpecification fullRemove.