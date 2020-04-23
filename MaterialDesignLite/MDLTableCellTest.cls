"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLTableCellTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTableCellTest guid: (GUID fromString: '{3fbb77ab-2cea-4e60-8d11-e5b4205f2734}')!
MDLTableCellTest comment: ''!
!MDLTableCellTest categoriesForClass!Material-Design-Lite-Components-Tests-Tables! !
!MDLTableCellTest methodsFor!

testBareBrush	self assert: [ :html | html mdlTableCell ] generates: '<td></td>'!

testNonNumerical	self assert: [ :html | html mdlTableCell nonNumerical ] generates: '<td class="mdl-data-table__cell--non-numeric"></td>'!

testWithContent	self assert: [ :html | html mdlTableCell: 'test' ] generates: '<td>test</td>'! !
!MDLTableCellTest categoriesFor: #testBareBrush!public!tests! !
!MDLTableCellTest categoriesFor: #testNonNumerical!public!tests! !
!MDLTableCellTest categoriesFor: #testWithContent!public!tests! !

