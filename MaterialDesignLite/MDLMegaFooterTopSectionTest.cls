"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLMegaFooterTopSectionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterTopSectionTest guid: (GUID fromString: '{26270366-31a6-45d9-8775-c36d75db78b3}')!
MDLMegaFooterTopSectionTest comment: ''!
!MDLMegaFooterTopSectionTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMegaFooterTopSectionTest methodsFor!

testBareBrush	self assert: [ :html | html mdlFooterTopSection ] generates: '<div class="mdl-mega-footer__top-section"></div>'!

testWithContent	self assert: [ :html | html mdlFooterTopSection: 'Test' ] generates: '<div class="mdl-mega-footer__top-section">Test</div>'! !
!MDLMegaFooterTopSectionTest categoriesFor: #testBareBrush!public!tests! !
!MDLMegaFooterTopSectionTest categoriesFor: #testWithContent!public!tests! !

