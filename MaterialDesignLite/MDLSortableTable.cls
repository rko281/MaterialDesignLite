﻿"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLSortableTable
	instanceVariableNames: 'title header rows elementsToShow unsortedRows position rowsPerPagePossibilities selectable id ajaxOnCompleteHook tableStyle rowsCache'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSortableTable guid: (GUID fromString: '{467598a8-3983-4367-9c1f-54867b97435a}')!
MDLSortableTable comment: 'Sortable table, renders a table and adds the necessary behavior to navigate trough the table
!MDLSortableTable categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLSortableTable methodsFor!

ajaxOnCompleteHook

ajaxOnCompleteHook: anObject

ajaxUpdateScriptFrom: html

elementsToShow

elementsToShow: anObject

ensureCurrentPageIsVisible

header

header: aCollection

indexOfLastRowToShow

initialize

nextPosition

noPagination

position

position: anObject

previousPosition

renderButtonTriggering: aMethod withIcon: aSymbol disabled: isDisabled on: html

renderContentOn: html

renderFooterPaginationOn: html

renderHeaderOn: html

renderItemsByPageSelectionComponentOn: html

renderPagesInfoOn: html

renderRowContentFor: cells on: html

renderRowsOn: html

renderTableContentOn: html

rows

rows: anObject

rowsPerPagePossibilities

rowsPerPagePossibilities: aCollection

selectable

selectable: anObject

shouldDisplayPagination

sortAscendingAtRow: aRowIndex

sortAtRow: aRowIndex using: aSelector

sortDescendingAtRow: aRowIndex

tableStyle

tableStyle: anObject

title

title: anObject

unsort
!MDLSortableTable categoriesFor: #ajaxOnCompleteHook!accessing!public! !
!MDLSortableTable categoriesFor: #ajaxOnCompleteHook:!accessing!public! !
!MDLSortableTable categoriesFor: #ajaxUpdateScriptFrom:!javascript!public! !
!MDLSortableTable categoriesFor: #elementsToShow!accessing!public! !
!MDLSortableTable categoriesFor: #elementsToShow:!accessing!public! !
!MDLSortableTable categoriesFor: #ensureCurrentPageIsVisible!public!rendering! !
!MDLSortableTable categoriesFor: #header!accessing!public! !
!MDLSortableTable categoriesFor: #header:!accessing!public! !
!MDLSortableTable categoriesFor: #indexOfLastRowToShow!public!rendering! !
!MDLSortableTable categoriesFor: #initialize!initialization!public! !
!MDLSortableTable categoriesFor: #nextPosition!actions!public! !
!MDLSortableTable categoriesFor: #noPagination!accessing!public! !
!MDLSortableTable categoriesFor: #position!accessing!public! !
!MDLSortableTable categoriesFor: #position:!accessing!public! !
!MDLSortableTable categoriesFor: #previousPosition!actions!public! !
!MDLSortableTable categoriesFor: #renderButtonTriggering:withIcon:disabled:on:!public!rendering! !
!MDLSortableTable categoriesFor: #renderContentOn:!public!rendering! !
!MDLSortableTable categoriesFor: #renderFooterPaginationOn:!public!rendering! !
!MDLSortableTable categoriesFor: #renderHeaderOn:!public!rendering! !
!MDLSortableTable categoriesFor: #renderItemsByPageSelectionComponentOn:!accessing!public! !
!MDLSortableTable categoriesFor: #renderPagesInfoOn:!public!rendering! !
!MDLSortableTable categoriesFor: #renderRowContentFor:on:!public!rendering! !
!MDLSortableTable categoriesFor: #renderRowsOn:!public!rendering! !
!MDLSortableTable categoriesFor: #renderTableContentOn:!public!rendering! !
!MDLSortableTable categoriesFor: #rows!accessing!public! !
!MDLSortableTable categoriesFor: #rows:!accessing!public! !
!MDLSortableTable categoriesFor: #rowsPerPagePossibilities!accessing!public! !
!MDLSortableTable categoriesFor: #rowsPerPagePossibilities:!accessing!public! !
!MDLSortableTable categoriesFor: #selectable!accessing!public! !
!MDLSortableTable categoriesFor: #selectable:!accessing!public! !
!MDLSortableTable categoriesFor: #shouldDisplayPagination!public!testing! !
!MDLSortableTable categoriesFor: #sortAscendingAtRow:!public!sorting! !
!MDLSortableTable categoriesFor: #sortAtRow:using:!public!sorting! !
!MDLSortableTable categoriesFor: #sortDescendingAtRow:!public!sorting! !
!MDLSortableTable categoriesFor: #tableStyle!accessing!public! !
!MDLSortableTable categoriesFor: #tableStyle:!accessing!public! !
!MDLSortableTable categoriesFor: #title!accessing!public! !
!MDLSortableTable categoriesFor: #title:!accessing!public! !
!MDLSortableTable categoriesFor: #unsort!public!sorting! !
