"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLListTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListTest guid: (GUID fromString: '{a96c0050-58bd-4b6e-b7b9-326a1edac672}')!
MDLListTest comment: ''!
!MDLListTest categoriesForClass!Material-Design-Lite-Components-Tests-List! !
!MDLListTest methodsFor!

testBareBrush	self assert: [ :html | html mdlList ] generates: '<ul class="mdl-list"></ul>'!

testWithContent	self assert: [ :html | html mdlList: 'test' ] generates: '<ul class="mdl-list">test</ul>'! !
!MDLListTest categoriesFor: #testBareBrush!public!tests! !
!MDLListTest categoriesFor: #testWithContent!public!tests! !

