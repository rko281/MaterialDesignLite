"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MDLSortableTableHeader
	instanceVariableNames: 'currentState unsortedState cells'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSortableTableHeader guid: (GUID fromString: '{e16f6636-cfd0-4243-bfb9-676a12d18177}')!
MDLSortableTableHeader comment: ''!
!MDLSortableTableHeader categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLSortableTableHeader methodsFor!

asMDLSortableTableHeader	^ self!

cells	^ cells!

cells: aCollection	cells := aCollection!

currentState	^ currentState		ifNil: [ self unsort.			currentState ]!

currentState: anObject	currentState := anObject!

goToNextState	self currentState: self currentState nextState!

headingCellOn: html	^ html mdlTableHeading		nonNumerical;		style: 'cursor: pointer;';		yourself!

initialize	super initialize.	unsortedState := MDLSortableTableHeaderElementUnsorted new!

renderContentOn: aRenderer forTable: table columnIndex: i	self currentState 		renderContentOn: aRenderer 		forTable: table 		columnIndex: i 		header: self!

tableCellOn: html	^ html mdlTableCell nonNumerical!

unsort	self currentState: self unsortedState!

unsortedState	^ unsortedState!

unsortedState: anObject	unsortedState := anObject! !
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

for: element	^ self new cells: element! !
!MDLSortableTableHeader class categoriesFor: #for:!instance creation!public! !

