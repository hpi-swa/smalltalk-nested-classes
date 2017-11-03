| timeToRun modulePath |
"Install ModuleSystem"
timeToRun := [
  modulePath := FileDirectory fullPathForURI: 'git_cache/modules/ModuleSystem'.
  Transcript cr; cr; show: 'bootstrapping ModuleSystem from ', modulePath; cr.
  Repository instance addSpec: (ModuleSpecification loadFrom: (FileDirectory on: modulePath)).
  (Repository instance specAt: #ModuleSystem) installModule.

  modulePath := FileDirectory fullPathForURI: 'git_cache/modules/ActiveRecordExample'.
  Transcript cr; cr; show: 'loading ActiveRecordExample from ', modulePath; cr.
  Repository instance addSpec: (ModuleSpecification loadFrom: (FileDirectory on: modulePath)) ] timeToRun.

Transcript cr; cr; show: '[ Time to install Module System: ', timeToRun, 'ms ]'; cr.
