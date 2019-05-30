"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLSortableTable
	instanceVariableNames: 'title header rows elementsToShow unsortedRows position rowsPerPagePossibilities selectable id ajaxOnCompleteHook tableStyle rowsCache'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSortableTable guid: (GUID fromString: '{467598a8-3983-4367-9c1f-54867b97435a}')!
MDLSortableTable comment: 'Sortable table, renders a table and adds the necessary behavior to navigate trough the table    Instance Variables	elementsToShow: number of rows that will be rendered	header: a table with the table headers ( auto conversion from object )	position:	 the index of the first row to render	rows: a table with all the rows	selectable: a boolean saying that the cells can be selected or not	ajaxOnCompleteHook: a String containing some JS code to be executed after we changed of page. By default it will update the MDL components to initialize the new ones.'!
!MDLSortableTable categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLSortableTable methodsFor!

ajaxOnCompleteHook	"I am a hook to let the user add some javascript after the rendering of a new page. By default I will update the MDL components to initialize the new ones that might be in the table if needed."	^ ajaxOnCompleteHook ifNil: [ 'componentHandler.upgradeDom();' ]!

ajaxOnCompleteHook: anObject	ajaxOnCompleteHook := anObject!

ajaxUpdateScriptFrom: html	^ html jQuery		script: [ :s | 			s				<<					((html jQuery id: id) load						html: [ :ajaxHtml | self renderTableContentOn: ajaxHtml ];						onComplete: self ajaxOnCompleteHook) ]!

elementsToShow	^ elementsToShow!

elementsToShow: anObject	elementsToShow := anObject!

ensureCurrentPageIsVisible	"In some case the elements to show can change. If we currently are in a page that does not exist anymore since the number of elements decreased, we should reset the position."	self position > rowsCache size		ifTrue: [ self position: 1 ]!

header	^ header!

header: aCollection	header := aCollection collect: [ :each | each asMDLSortableTableHeader ]!

indexOfLastRowToShow	^ rowsCache size min: position + elementsToShow - 1!

initialize	super initialize.	position := 1.	rows := #().	header := #().	unsortedRows := #().	self rowsPerPagePossibilities: #(10 50 100).	selectable := false!

nextPosition	position + elementsToShow < rowsCache size		ifTrue: [ self position: position + elementsToShow ]!

noPagination	self rowsPerPagePossibilities: {(Float infinity)}!

position	^ position!

position: anObject	position := anObject!

previousPosition	self position: ((position - elementsToShow) max: 1)!

renderButtonTriggering: aMethod withIcon: aSymbol disabled: isDisabled on: html	html mdlButton		bePush;		colored;		icon;		disabled: isDisabled;		onClick: [ html jQuery ajax				callback: [ self perform: aMethod ];				onSuccess: (self ajaxUpdateScriptFrom: html) ]			if: isDisabled not;		with: [ html mdlIcon: aSymbol ]!

renderContentOn: html	html mdlGrid		class: 'mdl-sorted-table';		with: [ html mdlCard				shadow: 2;				style: 'width: 100%; overflow: initial;';				class: self tableStyle if: self tableStyle isNotNil;				id: (id := html nextId);				with: [ self renderTableContentOn: html ] ]!

renderFooterPaginationOn: html	html mdlCardTextContainer		class: 'mdl-sorted-table__footer';		with: [ 					html div						mdlTypographyTextRight;						with: [ 									html text: 'Rows per page: '.									self renderItemsByPageSelectionComponentOn: html.									self renderPagesInfoOn: html.									self										renderButtonTriggering: #previousPosition										withIcon: #keyboard_arrow_left										disabled: position = 1										on: html.									self										renderButtonTriggering: #nextPosition										withIcon: #keyboard_arrow_right										disabled: position + elementsToShow > rowsCache size										on: html ] ]!

renderHeaderOn: html	html		tableHead: [ html tableRow: [ header doWithIndex: [ :head :i | head renderContentOn: html forTable: self columnIndex: i ] ] ]!

renderItemsByPageSelectionComponentOn: html	html		render:			(MDLSelectWidget new				labelBlock: #asString;				possibilities: rowsPerPagePossibilities;				callback: [ :o | self elementsToShow: o ];				selectedObject: self elementsToShow;				sortBlock: [ :a :b | a asInteger <= b asInteger ];				customizationBlock: [ :textField :renderer | textField onChange: (html jQuery ajax serializeThis onComplete: (self ajaxUpdateScriptFrom: html)) ];				yourself)!

renderPagesInfoOn: html	html		text:			(String				streamContents: [ :s | 					s						print: position;						nextPutAll: ' - ';						print: self indexOfLastRowToShow;						nextPutAll: ' of ';						print: rowsCache size ])!

renderRowContentFor: cells on: html	header		doWithIndex: [ :headerCell :columnIndex | 			| cell |			(headerCell tableCellOn: html)				with:					((cell := cells at: columnIndex) isBlock						ifTrue: [ [ cell cull: html ] ]						ifFalse: [ cell ]) ]!

renderRowsOn: html	((position to: self indexOfLastRowToShow) collect: [ :rowIndex | rowsCache at: rowIndex ])		do: [ :cells | html tableRow: [ self renderRowContentFor: cells on: html ] ]!

renderTableContentOn: html	"We cache the rows because it is possible that the user give a block to execute."	rowsCache := self rows.	self ensureCurrentPageIsVisible.	self title		ifNotNil: [ 			html mdlCardTitleContainer				style: 'padding-left: 24px;';				with: [ html mdlCardTitleText: self title level: 2 ] ].	(selectable		ifTrue: [ html mdlTable selectable ]		ifFalse: [ html mdlTable ])		style: 'width: 100%; border: none;';		with: [ 					self renderHeaderOn: html.					self renderRowsOn: html ].	self shouldDisplayPagination		ifTrue: [ self renderFooterPaginationOn: html ]!

rows	^ rows value!

rows: anObject	rows := anObject.	unsortedRows := anObject!

rowsPerPagePossibilities	^ rowsPerPagePossibilities!

rowsPerPagePossibilities: aCollection	rowsPerPagePossibilities := aCollection.	aCollection ifNotEmpty: [ self elementsToShow: aCollection first ]!

selectable	^ selectable!

selectable: anObject	selectable := anObject!

shouldDisplayPagination	^ self rowsPerPagePossibilities min < rowsCache size!

sortAscendingAtRow: aRowIndex	self sortAtRow: aRowIndex using: #>!

sortAtRow: aRowIndex using: aSelector	header		do: [ :each | 			(header at: aRowIndex) = each				ifFalse: [ each unsort ] ].	rows := self rows		sorted: [ :cell :anotherCell | 			[ (cell at: aRowIndex) perform: aSelector with: (anotherCell at: aRowIndex) ]				on: MessageNotUnderstood "If the element does not implements the comparators then I should not sort them."				do: [ true ]	 ]!

sortDescendingAtRow: aRowIndex	self sortAtRow: aRowIndex using: #<!

tableStyle	^ tableStyle!

tableStyle: anObject	tableStyle := anObject!

title	^ title!

title: anObject	title := anObject!

unsort	rows := unsortedRows ! !
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

