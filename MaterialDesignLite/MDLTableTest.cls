"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLTableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTableTest guid: (GUID fromString: '{8e04d938-cb83-4792-a671-6aa83fc9dd07}')!
MDLTableTest comment: ''!
!MDLTableTest categoriesForClass!Material-Design-Lite-Components-Tests-Tables! !
!MDLTableTest methodsFor!

testBareBrush	self assert: [ :html | html mdlTable ] generates: '<table class="mdl-data-table mdl-js-data-table"></table>'!

testSelectable	self assert: [ :html | html mdlTable selectable ] generates: '<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable"></table>'!

testWithContent	self assert: [ :html | html mdlTable: 'test' ] generates: '<table class="mdl-data-table mdl-js-data-table">test</table>'! !
!MDLTableTest categoriesFor: #testBareBrush!public!tests! !
!MDLTableTest categoriesFor: #testSelectable!public!tests! !
!MDLTableTest categoriesFor: #testWithContent!public!tests! !

