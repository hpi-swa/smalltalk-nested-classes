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
                  	[ spec repository: 'http://www.squeaksource.com/JSON' ];
			package: 'WebClient' with: 
                  	[ spec repository: 'http://ss3.gemstone.com/ss/WebClient' ].
		spec baseline: 'Vivide' with: [
			spec repository: 'github://hpi-swa/vivide:master/repository' ].
            spec
                package: 'ModuleSystem' with: [spec requires: #('AST-Core' 'JSON' 'WebClient')];
                package: 'ModuleSystem-Tests' with: [ spec requires: #('ModuleSystem') ];
                package: 'ModuleSystem-Experiments' with: [ spec requires: #('ModuleSystem') ];
                package: 'ModuleSystem-Scripts' with: [ spec requires: #('ModuleSystem' 'Vivide') ].
            spec
                group: 'default' with: #('ModuleSystem' 'ModuleSystem-Scripts' 'ModuleSystem-Experiments');
                group: 'Tests' with: #('ModuleSystem-Tests');
                group: 'TravisCI' with: #('Tests') ]