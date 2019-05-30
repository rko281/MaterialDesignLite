﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MDLSortableTableHeader
	instanceVariableNames: 'currentState unsortedState cells'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSortableTableHeader guid: (GUID fromString: '{e16f6636-cfd0-4243-bfb9-676a12d18177}')!
MDLSortableTableHeader comment: ''!
!MDLSortableTableHeader categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLSortableTableHeader methodsFor!

asMDLSortableTableHeader

cells

cells: aCollection

currentState

currentState: anObject

goToNextState

headingCellOn: html

initialize

renderContentOn: aRenderer forTable: table columnIndex: i

tableCellOn: html

unsort

unsortedState

unsortedState: anObject
!MDLSortableTableHeader categoriesFor: #asMDLSortableTableHeader!converting!public! !
!MDLSortableTableHeader categoriesFor: #cells!accessing!public! !
!MDLSortableTableHeader categoriesFor: #cells:!accessing!public! !
!MDLSortableTableHeader categoriesFor: #currentState!accessing!public! !
!MDLSortableTableHeader categoriesFor: #currentState:!accessing!public! !
!MDLSortableTableHeader categoriesFor: #goToNextState!public!state handling! !
!MDLSortableTableHeader categoriesFor: #headingCellOn:!public!rendering! !
!MDLSortableTableHeader categoriesFor: #initialize!initialization!public! !
!MDLSortableTableHeader categoriesFor: #renderContentOn:forTable:columnIndex:!public!rendering! !
!MDLSortableTableHeader categoriesFor: #tableCellOn:!public!rendering! !
!MDLSortableTableHeader categoriesFor: #unsort!public!sorting! !
!MDLSortableTableHeader categoriesFor: #unsortedState!accessing!public! !
!MDLSortableTableHeader categoriesFor: #unsortedState:!accessing!public! !

!MDLSortableTableHeader class methodsFor!

for: element
!MDLSortableTableHeader class categoriesFor: #for:!instance creation!public! !
