"Filed out from Dolphin Smalltalk 7"!

WATableHeadingTag subclass: #MDLTableHeadingCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTableHeadingCell guid: (GUID fromString: '{44b9ce3f-a265-4ae7-b733-813f128962e7}')!
MDLTableHeadingCell comment: 'Description--------------------I am a brush to create a heading cell inside a MDL table.Example--------------------	| datas |	datas := OrderedDictionary with: ''Acrylic (Transparent)'' -> #(''25'' ''$2.90'') with: ''Plywood (Birch)'' -> #(''50'' ''$1.25'') with: ''Laminate (Gold on Blue)'' -> #(''10'' ''$2.35'').	html mdlTable		shadow: 2;		selectable;		with: [ html				tableHead: [ html						tableRow: [ html mdlTableHeading: ''Material''.							html tableHeading: ''Quantity''.							html tableHeading: ''Price'' ] ].			html				tableBody: [ datas						keysAndValuesDo: [ :title :members | 							html								tableRow: [ html mdlTableCell: title.									members do: [ :data | html tableData: data ] ] ] ] ]'!
!MDLTableHeadingCell categoriesForClass!Material-Design-Lite-Components-Tables! !
!MDLTableHeadingCell methodsFor!

nonNumerical	self class: 'mdl-data-table__cell--non-numeric'! !
!MDLTableHeadingCell categoriesFor: #nonNumerical!options!public! !

