baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [

            spec 
			package: 'AST-Core' with: 
                  	[ spec repository: 'http://www.squeaksource.com/rb' ];
			package: 'JSON' with: 
				[ spec repository: 'http://www.squeaksource.com/JSON' ].
            spec
                package: 'ModuleSystem' with: [spec requires: #('AST-Core', 'JSON')];
                package: 'ModuleSystem-Tests' with: [ spec requires: #('ModuleSystem') ];
                package: 'ModuleSystem-Experiments' with: [ spec requires: #('ModuleSystem') ];
                package: 'ModuleSystem-Scripts' with: [ spec requires: #('ModuleSystem') ].
            spec
                group: 'default' with: #('ModuleSystem' 'ModuleSystem-Scripts' 'ModuleSystem-Experiments');
                group: 'Tests' with: #('ModuleSystem-Tests');
                group: 'TravisCI' with: #('Tests') ]