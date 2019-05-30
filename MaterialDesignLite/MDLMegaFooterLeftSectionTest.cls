"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLMegaFooterLeftSectionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterLeftSectionTest guid: (GUID fromString: '{a884bb21-37b2-4579-b38b-04daddd5178d}')!
MDLMegaFooterLeftSectionTest comment: ''!
!MDLMegaFooterLeftSectionTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMegaFooterLeftSectionTest methodsFor!

testBareBrush	self assert: [ :html | html mdlFooterLeftSection ] generates: '<div class="mdl-mega-footer__left-section"></div>'!

testWithContent	self assert: [ :html | html mdlFooterLeftSection: 'Test' ] generates: '<div class="mdl-mega-footer__left-section">Test</div>'! !
!MDLMegaFooterLeftSectionTest categoriesFor: #testBareBrush!public!tests! !
!MDLMegaFooterLeftSectionTest categoriesFor: #testWithContent!public!tests! !

