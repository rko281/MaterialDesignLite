"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLTableCellHeadingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTableCellHeadingTest guid: (GUID fromString: '{b38b57a6-0fb4-4dba-aaba-15b2b81464eb}')!
MDLTableCellHeadingTest comment: ''!
!MDLTableCellHeadingTest categoriesForClass!Material-Design-Lite-Components-Tests-Tables! !
!MDLTableCellHeadingTest methodsFor!

testBareBrush	self assert: [ :html | html mdlTableHeading ] generates: '<th></th>'!

testNonNumerical	self assert: [ :html | html mdlTableHeading nonNumerical ] generates: '<th class="mdl-data-table__cell--non-numeric"></th>'!

testWithContent	self assert: [ :html | html mdlTableHeading: 'test' ] generates: '<th>test</th>'! !
!MDLTableCellHeadingTest categoriesFor: #testBareBrush!public!tests! !
!MDLTableCellHeadingTest categoriesFor: #testNonNumerical!public!tests! !
!MDLTableCellHeadingTest categoriesFor: #testWithContent!public!tests! !

