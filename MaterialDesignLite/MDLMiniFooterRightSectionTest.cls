"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLMiniFooterRightSectionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMiniFooterRightSectionTest guid: (GUID fromString: '{21efc933-020d-46d8-8eba-ae312741f277}')!
MDLMiniFooterRightSectionTest comment: ''!
!MDLMiniFooterRightSectionTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMiniFooterRightSectionTest methodsFor!

testBareBrush	self assert: [ :html | html mdlMiniFooterRightSection ] generates: '<div class="mdl-mini-footer__right-section"></div>'!

testWithContent	self assert: [ :html | html mdlMiniFooterRightSection: 'Test' ] generates: '<div class="mdl-mini-footer__right-section">Test</div>'! !
!MDLMiniFooterRightSectionTest categoriesFor: #testBareBrush!public!tests! !
!MDLMiniFooterRightSectionTest categoriesFor: #testWithContent!public!tests! !

