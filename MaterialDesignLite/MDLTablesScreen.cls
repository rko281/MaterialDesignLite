"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLTablesScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTablesScreen guid: (GUID fromString: '{1c186822-69ca-4b05-a2b5-1145739c2aa0}')!
MDLTablesScreen comment: 'Organize data.'!
!MDLTablesScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLTablesScreen methodsFor!

dataTable	^ OrderedDictionary new		add: 'Data table' -> #renderDataTableOn:;		yourself!

renderDataTableOn: html	| datas |	datas := OrderedDictionary with: 'Acrylic (Transparent)' -> #('25' '$2.90') with: 'Plywood (Birch)' -> #('50' '$1.25') with: 'Laminate (Gold on Blue)' -> #('10' '$2.35').	html mdlTable		shadow: 2;		selectable;		with: [ html				tableHead: [ html						tableRow: [ html mdlTableHeading								nonNumerical;								with: 'Material'.							html mdlTableHeading: 'Quantity'.							html mdlTableHeading: 'Price' ] ].			html				tableBody: [ datas						keysAndValuesDo: [ :title :members | 							html								tableRow: [ html mdlTableCell nonNumerical; with: title.									members do: [ :data | html mdlTableCell: data ] ] ] ] ]!

renderScreenContentOn: html	self render: self dataTable on: html! !
!MDLTablesScreen categoriesFor: #dataTable!public!sections! !
!MDLTablesScreen categoriesFor: #renderDataTableOn:!demos!public! !
!MDLTablesScreen categoriesFor: #renderScreenContentOn:!public!rendering! !

!MDLTablesScreen class methodsFor!

icon	^ 'comptablesPng'!

title	^ 'Tables'! !
!MDLTablesScreen class categoriesFor: #icon!accessing!public! !
!MDLTablesScreen class categoriesFor: #title!accessing!public! !

