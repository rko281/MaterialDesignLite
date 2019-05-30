"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLMegaFooterMiddleSectionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterMiddleSectionTest guid: (GUID fromString: '{d1ec1f71-b5c3-4e50-a166-de73dd26b6ab}')!
MDLMegaFooterMiddleSectionTest comment: ''!
!MDLMegaFooterMiddleSectionTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMegaFooterMiddleSectionTest methodsFor!

testBareBrush	self assert: [ :html | html mdlFooterMiddleSection ] generates: '<div class="mdl-mega-footer__middle-section"></div>'!

testWithContent	self assert: [ :html | html mdlFooterMiddleSection: 'Test' ] generates: '<div class="mdl-mega-footer__middle-section">Test</div>'! !
!MDLMegaFooterMiddleSectionTest categoriesFor: #testBareBrush!public!tests! !
!MDLMegaFooterMiddleSectionTest categoriesFor: #testWithContent!public!tests! !

