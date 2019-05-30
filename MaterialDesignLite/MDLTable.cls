"Filed out from Dolphin Smalltalk 7"!

WATableTag subclass: #MDLTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTable guid: (GUID fromString: '{b71b1d55-02d6-4fdc-8068-b0fdcbbbbbb7}')!
MDLTable comment: 'Description--------------------I am a brush to create a MDL table.Example--------------------	| datas |	datas := OrderedDictionary with: ''Acrylic (Transparent)'' -> #(''25'' ''$2.90'') with: ''Plywood (Birch)'' -> #(''50'' ''$1.25'') with: ''Laminate (Gold on Blue)'' -> #(''10'' ''$2.35'').	html mdlTable		shadow: 2;		selectable;		with: [ html				tableHead: [ html						tableRow: [ html mdlTableHeading: ''Material''.							html tableHeading: ''Quantity''.							html tableHeading: ''Price'' ] ].			html				tableBody: [ datas						keysAndValuesDo: [ :title :members | 							html								tableRow: [ html mdlTableCell: title.									members do: [ :data | html tableData: data ] ] ] ] ]'!
!MDLTable categoriesForClass!Material-Design-Lite-Components-Tables! !
!MDLTable methodsFor!

initialize	super initialize.	self class: 'mdl-data-table mdl-js-data-table'!

selectable	self class: 'mdl-data-table--selectable'! !
!MDLTable categoriesFor: #initialize!initialization!public! !
!MDLTable categoriesFor: #selectable!options!public! !

