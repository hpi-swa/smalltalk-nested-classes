baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'ModuleSystem' with: [spec requires: #('AST-Core')];
                package: 'ModuleSystem-Tests' with: [ spec requires: #('default') ];
                package: 'ModuleSystem-Experiments' with: [ spec requires: #('ModuleSystem') ];
		    package: 'AST-Core' with: 
					[ spec repository: 'http://www.squeaksource.com/rb' ].
            spec
                group: 'default' with: #('ModuleSystem' 'ModuleSystem-Experiments');
                group: 'Tests' with: #('ModuleSystem-Tests');
                group: 'TravisCI' with: #('Tests') ]