"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLMegaFooterRightSectionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterRightSectionTest guid: (GUID fromString: '{6428915d-50e6-4528-a320-799dd7883ce6}')!
MDLMegaFooterRightSectionTest comment: ''!
!MDLMegaFooterRightSectionTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMegaFooterRightSectionTest methodsFor!

testBareBrush	self assert: [ :html | html mdlFooterRightSection ] generates: '<div class="mdl-mega-footer__right-section"></div>'!

testWithContent	self assert: [ :html | html mdlFooterRightSection: 'Test' ] generates: '<div class="mdl-mega-footer__right-section">Test</div>'! !
!MDLMegaFooterRightSectionTest categoriesFor: #testBareBrush!public!tests! !
!MDLMegaFooterRightSectionTest categoriesFor: #testWithContent!public!tests! !

