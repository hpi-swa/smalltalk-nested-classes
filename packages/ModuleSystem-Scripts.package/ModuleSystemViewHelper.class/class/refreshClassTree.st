as yet unclassified
refreshClassTree
	"Dirty hack to force refresh"
	ViPane allInstances do: [:pane | (pane id ==  #'07f1c17c-2ad6-4491-b22e-ae706995da3c') ifTrue: [ pane currentQuery: pane currentQuery]]