baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [
            spec package: 'AST-Core' with: [
                spec repository: 'http://www.squeaksource.com/rb' ].
            spec baseline: 'Vivide' with: [
                spec repository: 'github://hpi-swa/vivide:master/repository' ].
            spec
                package: 'ModuleSystem-Core' with: [spec requires: #('AST-Core')];
                package: 'ModuleSystem-Tests' with: [ spec requires: #('ModuleSystem-Core' 'ModuleSystem-Helpers') ];
                package: 'ModuleSystem-Experiments' with: [ spec requires: #('ModuleSystem-Core') ];
                package: 'ModuleSystem-Helpers' with: [spec requires: #('ModuleSystem-Core')];
                package: 'ModuleSystem-Scripts' with: [ spec requires: #('ModuleSystem-Core' 'ModuleSystem-Helpers' 'Vivide') ].
            spec
                group: 'default' with: #('ModuleSystem-Core' 'ModuleSystem-Helpers' 'ModuleSystem-Scripts' 'ModuleSystem-Experiments');
                group: 'Tests' with: #('ModuleSystem-Tests');
                group: 'TravisCI' with: #('Tests') ]
