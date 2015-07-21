definitions
defc052400ffb194f06a5aa670ce26123af
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'FabN'); add: (#creationTimeStamp->'23 June 2015 5:39:26 pm'); yourself)); add: (#id->#'c052400f-fb19-4f06-a5aa-670ce26123af'); add: (#block->[:in :out | out addAll: (in sorted: [:a :b |
	(a isKindOf: BehaviorSpecification)
		ifTrue: [ true ]
		ifFalse: [ (b isKindOf: BehaviorSpecification)
			ifTrue: [ false ]
			ifFalse: [
				a isNestedClass & b isNestedClass not ifTrue: [ true ]
					ifFalse: [ a isNestedClass not & b isNestedClass ifTrue: [ false ]
						ifFalse: [ a isNestedClass & b isNestedClass ifTrue: [ ModuleSystemViewHelper compareClassSpec: a theClassSpec with: b theClassSpec ] 
							ifFalse: [ a selector <= b selector] ] ] ] ] ] ) ]); add: (#sourceCode->'[:in :out | out addAll: (in sorted: [:a :b |
	(a isKindOf: BehaviorSpecification)
		ifTrue: [ true ]
		ifFalse: [ (b isKindOf: BehaviorSpecification)
			ifTrue: [ false ]
			ifFalse: [
				a isNestedClass & b isNestedClass not ifTrue: [ true ]
					ifFalse: [ a isNestedClass not & b isNestedClass ifTrue: [ false ]
						ifFalse: [ a isNestedClass & b isNestedClass ifTrue: [ ModuleSystemViewHelper compareClassSpec: a theClassSpec with: b theClassSpec ] 
							ifFalse: [ a selector <= b selector] ] ] ] ] ] ) ]'); yourself)