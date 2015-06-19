| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'ModuleSystem';
  repository: 'filetree://', gitPath, '/smalltalk-nested-classes/packages';
  get.

Metacello new
  baseline: 'ModuleSystem';
  repository: 'filetree://', gitPath, '/smalltalk-nested-classes/packages';
  load: 'TravisCI'.

(Smalltalk at: #MetacelloPlatform) current authorName: 'travisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfModuleSystem' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
