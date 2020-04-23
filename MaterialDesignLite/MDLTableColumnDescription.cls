"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MDLTableColumnDescription
	instanceVariableNames: 'title evaluation idBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTableColumnDescription guid: (GUID fromString: '{067b5b81-1ab7-459b-8f3d-4a3155fd7332}')!
MDLTableColumnDescription comment: 'I am an abstract super class to model the description of a column for a MDLTableWidget.I hold my:- #title which is the string to display as column name- #idBlock which is the block that I use to generate an id. This block takes an argument which is the html canvas.- #evaluation which is the block that I use to get the content of a cell concerning myself by providing it a row object.My subclasses model concrete column description check them for concrete examples.'!
!MDLTableColumnDescription categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLTableColumnDescription methodsFor!

evaluation	^ evaluation!

evaluation: anObject	evaluation := anObject!

generateIdUsing: html	^ self idBlock cull: html!

idBlock	^ idBlock!

idBlock: anObject	idBlock := anObject!

initialize	super initialize.	self idBlock: [ :html | html nextId ]!

render: row on: html	self subclassResponsibility!

renderHeadingOn: html	| heading |	heading := html mdlTableHeading		id: (self generateIdUsing: html);		yourself.		^ heading!

title	^ title!

title: anObject	title := anObject! !
!MDLTableColumnDescription categoriesFor: #evaluation!accessing!public! !
!MDLTableColumnDescription categoriesFor: #evaluation:!accessing!public! !
!MDLTableColumnDescription categoriesFor: #generateIdUsing:!private! !
!MDLTableColumnDescription categoriesFor: #idBlock!accessing!public! !
!MDLTableColumnDescription categoriesFor: #idBlock:!accessing!public! !
!MDLTableColumnDescription categoriesFor: #initialize!initialization!public! !
!MDLTableColumnDescription categoriesFor: #render:on:!public!rendering! !
!MDLTableColumnDescription categoriesFor: #renderHeadingOn:!public!rendering! !
!MDLTableColumnDescription categoriesFor: #title!accessing!public! !
!MDLTableColumnDescription categoriesFor: #title:!accessing!public! !

