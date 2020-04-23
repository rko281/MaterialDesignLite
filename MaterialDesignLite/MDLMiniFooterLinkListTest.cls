"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLMiniFooterLinkListTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMiniFooterLinkListTest guid: (GUID fromString: '{99d0f9e4-dad1-4eb1-9057-bc4b0be29fdc}')!
MDLMiniFooterLinkListTest comment: ''!
!MDLMiniFooterLinkListTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMiniFooterLinkListTest methodsFor!

testBareBrush	self assert: [ :html | html mdlMiniFooterLinkList ] generates: '<ul class="mdl-mini-footer__link-list"></ul>'!

testWithContent	self assert: [ :html | html mdlMiniFooterLinkList: 'Test' ] generates: '<ul class="mdl-mini-footer__link-list">Test</ul>'! !
!MDLMiniFooterLinkListTest categoriesFor: #testBareBrush!public!tests! !
!MDLMiniFooterLinkListTest categoriesFor: #testWithContent!public!tests! !

