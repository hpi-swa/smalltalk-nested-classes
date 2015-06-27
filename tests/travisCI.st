| gitPath gitCache modulePath moduleSystemSuites |
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

"Run ModuleSystem tests"
moduleSystemSuites := (Repository instance allTestPackages gather: [ :mod | mod allTestCases ]) collect: [ :testCaseClass | testCaseClass suite ].
moduleSystemSuites do: [ :suite | | contentsSuccess contentsFailure appendStream |
    "copy old content"
    contentsSuccess := (FileDirectory default readOnlyFileNamed: 'TravisCISuccess.txt') contents.
    contentsFailure := (FileDirectory default readOnlyFileNamed: 'TravisCIFailure.txt') contents.

    "run test"
    MetacelloBuilderTravisCI runTestSuite: suite successFilename: 'TravisCISuccess.txt' failFilename: 'TravisCIFailure.txt'.
    
    "append previous results"
    appendStream := FileDirectory default oldFileNamed: 'TravisCISuccess.txt'.
    appendStream setToEnd.
    appendStream nextPutAll: contentsSuccess.
    appendStream flush.
    appendStream close.
    appendStream := FileDirectory default oldFileNamed: 'TravisCIFailure.txt'.
    appendStream setToEnd.
    appendStream nextPutAll: contentsFailure.
    appendStream flush.
    appendStream close ].

