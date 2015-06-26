| gitPath gitCache modulePath |
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

modulePath := gitPath, '/smalltalk-nested-classes/modules/ModuleSystem'.
Transcript cr; show: 'bootstrapping ModuleSystem from ', modulePath.
Repository instance addSpec: (ModuleSpecification loadFrom: (FileDirectory on: modulePath)).
(Repository instance specAt: #ModuleSystem) installModule.

modulePath := gitPath, '/smalltalk-nested-classes/modules/ActiveRecordExample'.
Transcript cr; show: 'loading ActiveRecordExample from ', modulePath.
Repository instance addSpec: (ModuleSpecification loadFrom: (FileDirectory on: modulePath)).

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfModuleSystem' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
