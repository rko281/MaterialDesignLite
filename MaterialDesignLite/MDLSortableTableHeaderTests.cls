"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #MDLSortableTableHeaderTests
	instanceVariableNames: 'header'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSortableTableHeaderTests guid: (GUID fromString: '{e4b35f9d-a0c3-4a0d-b66b-37fd1966f18b}')!
MDLSortableTableHeaderTests comment: ''!
!MDLSortableTableHeaderTests categoriesForClass!Material-Design-Lite-Widgets-Tests-Table! !
!MDLSortableTableHeaderTests methodsFor!

setUp	super setUp.	header := MDLSortableTableHeader for: #('test' 'material' 'design' 'lite')!

testGoToNextState	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted.	header goToNextState.	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted defaultNextState.	header goToNextState.	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted defaultNextState defaultNextState.	header goToNextState.	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted	!

testIsInitializedWithUnsortedState	self assert: MDLSortableTableHeader new currentState class equals: MDLSortableTableHeaderElementUnsorted!

testUnsort	header goToNextState.	self flag: #clean. "#deny:equals: was introduced in P6. When P5 support will be dorpped, uses #deny:equals:."	self deny: header currentState class == MDLSortableTableHeaderElementUnsorted.	header unsort.	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted! !
!MDLSortableTableHeaderTests categoriesFor: #setUp!public!running! !
!MDLSortableTableHeaderTests categoriesFor: #testGoToNextState!public!tests! !
!MDLSortableTableHeaderTests categoriesFor: #testIsInitializedWithUnsortedState!public!tests! !
!MDLSortableTableHeaderTests categoriesFor: #testUnsort!public!tests! !

