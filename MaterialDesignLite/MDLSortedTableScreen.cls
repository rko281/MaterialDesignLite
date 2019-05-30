"Filed out from Dolphin Smalltalk 7"!

MDLWidgetDemo subclass: #MDLSortedTableScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSortedTableScreen guid: (GUID fromString: '{e093054f-27d3-46e9-aac5-686cdcce6e5c}')!
MDLSortedTableScreen comment: 'Screen to render MDLSortedTable examples'!
!MDLSortedTableScreen categoriesForClass!Material-Design-Lite-Demo-Widgets! !
!MDLSortedTableScreen methodsFor!

renderScreenContentOn: html	self render: self table on: html!

renderSortedTableOn: html	html div		style: 'width: 800px;';		with:			(MDLSortableTable new				header: {'Class' . 'SuperClass' . (MDLSortableTableHeaderNumeric for: 'Number of subclasses')};				rows: [ WAObject allSubclasses						collect: [ :class | 							{class printString.							class superclass printString.							class subclasses size} ] ];				rowsPerPagePossibilities: #(10 50 100 200))!

table	^ OrderedDictionary new		add: 'Sorted Table Widget' -> #renderSortedTableOn:;		yourself! !
!MDLSortedTableScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLSortedTableScreen categoriesFor: #renderSortedTableOn:!demos!public! !
!MDLSortedTableScreen categoriesFor: #table!public!sections! !

!MDLSortedTableScreen class methodsFor!

description	^ 'A widget to get a paginated table with a sort function.'!

icon	^ #comptablesPng!

title	^ 'Sorted Table'! !
!MDLSortedTableScreen class categoriesFor: #description!accessing!public! !
!MDLSortedTableScreen class categoriesFor: #icon!accessing!public! !
!MDLSortedTableScreen class categoriesFor: #title!accessing!public! !

