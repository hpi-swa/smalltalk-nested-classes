accessing
protocols
	^ ((methodDict values collect: [ :spec | spec protocol ]) union:
			((self theMetaClassSpecification methodDict values collect: [ :spec | spec protocol ]))) asSet