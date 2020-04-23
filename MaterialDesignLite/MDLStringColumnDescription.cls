"Filed out from Dolphin Smalltalk 7"!

MDLTableColumnDescription subclass: #MDLStringColumnDescription
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLStringColumnDescription guid: (GUID fromString: '{ea341dab-af9a-4ee1-a179-ff8a11baab04}')!
MDLStringColumnDescription comment: 'I model a string column.My values are of kind string. Because of that, I align the title of the column on the left side.'!
!MDLStringColumnDescription categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLStringColumnDescription methodsFor!

render: row on: html	html mdlTableCell		id: (self generateIdUsing: html);		class: 'mdl-table-widget__cell--string';		nonNumerical;		with: (self evaluation value: row)!

renderHeadingOn: html	(super renderHeadingOn: html)		class: 'mdl-table-widget__cell--string';		nonNumerical;		with: self title.! !
!MDLStringColumnDescription categoriesFor: #render:on:!public!rendering! !
!MDLStringColumnDescription categoriesFor: #renderHeadingOn:!public!rendering! !

