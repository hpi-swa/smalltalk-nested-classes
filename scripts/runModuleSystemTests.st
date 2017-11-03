"Run ModuleSystem tests"
timeToRun := [
  moduleSystemTestCases := (Repository instance allTestPackages gather: [ :mod | mod allTestCases ]).
  runner := SCITestRunner runClasses: moduleSystemTestCases named: 'ModuleSystem Tests'.
  SCITestReporterStdout report: runner spec: SmalltalkCISpec new ] timeToRun.
