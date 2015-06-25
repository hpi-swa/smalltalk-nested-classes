testing
testBootstrapped
	" ModuleSystem must be bootstrapped for some tests to run. "
	self assert: Repository instance isBootstrapped.