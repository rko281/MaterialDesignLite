"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLMegaFooterLinkListTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterLinkListTest guid: (GUID fromString: '{7c5bdeb9-166a-41ba-b2d1-d23ec4b1a79a}')!
MDLMegaFooterLinkListTest comment: ''!
!MDLMegaFooterLinkListTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMegaFooterLinkListTest methodsFor!

testBareBrush	self assert: [ :html | html mdlFooterLinkList ] generates: '<ul class="mdl-mega-footer__link-list"></ul>'!

testWithContent	self assert: [ :html | html mdlFooterLinkList: 'Test' ] generates: '<ul class="mdl-mega-footer__link-list">Test</ul>'! !
!MDLMegaFooterLinkListTest categoriesFor: #testBareBrush!public!tests! !
!MDLMegaFooterLinkListTest categoriesFor: #testWithContent!public!tests! !

