"Filed out from Dolphin Smalltalk 7"!

MDLSortableTableHeaderState subclass: #MDLSortableTableHeaderElementUnsorted
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSortableTableHeaderElementUnsorted guid: (GUID fromString: '{5c6fc611-863b-44ec-b986-79f8fbe0f409}')!
MDLSortableTableHeaderElementUnsorted comment: ''!
!MDLSortableTableHeaderElementUnsorted categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLSortableTableHeaderElementUnsorted methodsFor!

renderContentOn: html forTable: table columnIndex: i header: header	(header headingCellOn: html)		onClick:			(html jQuery ajax				callback: [ table sortAscendingAtRow: i.					header goToNextState ];				onSuccess: (table ajaxUpdateScriptFrom: html));		with: header cells! !
!MDLSortableTableHeaderElementUnsorted categoriesFor: #renderContentOn:forTable:columnIndex:header:!public!rendering! !

!MDLSortableTableHeaderElementUnsorted class methodsFor!

defaultNextState	^ MDLSortableTableHeaderElementSortedAscending! !
!MDLSortableTableHeaderElementUnsorted class categoriesFor: #defaultNextState!accessing!public! !

