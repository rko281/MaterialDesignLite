"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLCardTagTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardTagTest guid: (GUID fromString: '{19a9c5fc-39f2-47a7-9bb7-19952faf2d4e}')!
MDLCardTagTest comment: ''!
!MDLCardTagTest categoriesForClass!Material-Design-Lite-Components-Tests-Card! !
!MDLCardTagTest methodsFor!

testBareBrush	self assert: [ :html | html mdlCard ] generates: '<div class="mdl-card"></div>'!

testWithContent	self assert: [ :html | html mdlCard: 'test' ] generates: '<div class="mdl-card">test</div>'! !
!MDLCardTagTest categoriesFor: #testBareBrush!public!tests! !
!MDLCardTagTest categoriesFor: #testWithContent!public!tests! !

