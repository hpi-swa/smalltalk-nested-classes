modifying
reset
	self notify: 'Attempt to reset a repository. All specifications and instantiations will be lost!'.

	self initialize.
	"self addSpec: ModuleSpecification example1."