"Filed out from Dolphin Smalltalk 7"!

MDLSortableTableHeaderState subclass: #MDLSortableTableHeaderElementSortedDescending
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSortableTableHeaderElementSortedDescending guid: (GUID fromString: '{17d0fdbd-4de0-42c5-82ad-7afecb8eaf42}')!
MDLSortableTableHeaderElementSortedDescending comment: ''!
!MDLSortableTableHeaderElementSortedDescending categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLSortableTableHeaderElementSortedDescending methodsFor!

renderContentOn: html forTable: table columnIndex: i header: header	(header headingCellOn: html)		sortedDescending;		onClick:			(html jQuery ajax				callback: [ table unsort.					header goToNextState ];				onSuccess: (table ajaxUpdateScriptFrom: html));		with: header cells! !
!MDLSortableTableHeaderElementSortedDescending categoriesFor: #renderContentOn:forTable:columnIndex:header:!public!rendering! !

!MDLSortableTableHeaderElementSortedDescending class methodsFor!

defaultNextState	^ MDLSortableTableHeaderElementUnsorted! !
!MDLSortableTableHeaderElementSortedDescending class categoriesFor: #defaultNextState!accessing!public! !

