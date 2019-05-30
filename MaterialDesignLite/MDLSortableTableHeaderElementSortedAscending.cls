"Filed out from Dolphin Smalltalk 7"!

MDLSortableTableHeaderState subclass: #MDLSortableTableHeaderElementSortedAscending
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSortableTableHeaderElementSortedAscending guid: (GUID fromString: '{67c9586e-ec97-40c4-b23f-d24e17912b43}')!
MDLSortableTableHeaderElementSortedAscending comment: ''!
!MDLSortableTableHeaderElementSortedAscending categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLSortableTableHeaderElementSortedAscending methodsFor!

renderContentOn: html forTable: table columnIndex: i header: header	(header headingCellOn: html)		sortedAscending;		onClick:			(html jQuery ajax				callback: [ table sortDescendingAtRow: i.					header goToNextState ];				onSuccess: (table ajaxUpdateScriptFrom: html));		with: header cells! !
!MDLSortableTableHeaderElementSortedAscending categoriesFor: #renderContentOn:forTable:columnIndex:header:!public!rendering! !

!MDLSortableTableHeaderElementSortedAscending class methodsFor!

defaultNextState	^ MDLSortableTableHeaderElementSortedDescending! !
!MDLSortableTableHeaderElementSortedAscending class categoriesFor: #defaultNextState!accessing!public! !

