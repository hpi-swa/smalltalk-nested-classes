definitions
def5e00a7327d434538bcabc9e0537d48af
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'d856f786-4069-411c-9755-9e7bd0054f6e'); add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'24 June 2015 1:02:42 pm'); yourself)); add: (#id->#'5e00a732-7d43-4538-bcab-c9e0537d48af'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:mem | { #text -> 'Load'.
	#clicked -> [[ Repository loadLocalModule.
		ModuleSystemViewHelper refreshClassTree ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:mem | { #text -> ''Load''.
	#clicked -> [[ Repository loadLocalModule.
		ModuleSystemViewHelper refreshClassTree ]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)