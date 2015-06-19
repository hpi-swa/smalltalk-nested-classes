baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'ModuleSystem';
                package: 'ModuleSystem-Tests' with: [ spec requires: #('default') ];
                package: 'ModuleSystem-Experiments'
                    with: [ spec requires: #('ModuleSystem') ].
            spec
                group: 'default' with: #('ModuleSystem' 'ModuleSystem-Experiments');
                group: 'Tests' with: #('ModuleSystem-Tests');
                group: 'TravisCI' with: #('Tests') ]