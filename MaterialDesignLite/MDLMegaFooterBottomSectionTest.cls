"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLMegaFooterBottomSectionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterBottomSectionTest guid: (GUID fromString: '{0ca99a6a-3253-4a49-86a6-8f072db0bdd0}')!
MDLMegaFooterBottomSectionTest comment: ''!
!MDLMegaFooterBottomSectionTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMegaFooterBottomSectionTest methodsFor!

testBareBrush	self assert: [ :html | html mdlFooterBottomSection ] generates: '<div class="mdl-mega-footer__bottom-section"></div>'!

testWithContent	self assert: [ :html | html mdlFooterBottomSection: 'Test' ] generates: '<div class="mdl-mega-footer__bottom-section">Test</div>'! !
!MDLMegaFooterBottomSectionTest categoriesFor: #testBareBrush!public!tests! !
!MDLMegaFooterBottomSectionTest categoriesFor: #testWithContent!public!tests! !

