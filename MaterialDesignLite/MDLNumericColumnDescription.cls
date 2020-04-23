"Filed out from Dolphin Smalltalk 7"!

MDLTableColumnDescription subclass: #MDLNumericColumnDescription
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNumericColumnDescription guid: (GUID fromString: '{34be3787-0be9-4f28-bfcb-be2f07e7dd96}')!
MDLNumericColumnDescription comment: 'I model a numeric column.My values are of kind numeric. Because of that, I align the title of the column on the right side.'!
!MDLNumericColumnDescription categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLNumericColumnDescription methodsFor!

render: row on: html	html mdlTableCell		id: (self generateIdUsing: html);		class: 'mdl-table-widget__cell--numeric';		with: (self evaluation value: row)!

renderHeadingOn: html	(super renderHeadingOn: html)		class: 'mdl-table-widget__cell--numeric';		with: self title.! !
!MDLNumericColumnDescription categoriesFor: #render:on:!public!rendering! !
!MDLNumericColumnDescription categoriesFor: #renderHeadingOn:!public!rendering! !

