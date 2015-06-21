as yet unclassified
process: parseTree for: class
	parseTree acceptVisitor: (self new lookupStart: class; yourself).
	^ parseTree newSource