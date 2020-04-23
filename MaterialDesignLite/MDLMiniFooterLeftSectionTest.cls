"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLMiniFooterLeftSectionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMiniFooterLeftSectionTest guid: (GUID fromString: '{8173d4a5-ef28-48a1-b549-39e5a87e0fa2}')!
MDLMiniFooterLeftSectionTest comment: ''!
!MDLMiniFooterLeftSectionTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMiniFooterLeftSectionTest methodsFor!

testBareBrush	self assert: [ :html | html mdlMiniFooterLeftSection ] generates: '<div class="mdl-mini-footer__left-section"></div>'!

testWithContent	self assert: [ :html | html mdlMiniFooterLeftSection: 'Test' ] generates: '<div class="mdl-mini-footer__left-section">Test</div>'! !
!MDLMiniFooterLeftSectionTest categoriesFor: #testBareBrush!public!tests! !
!MDLMiniFooterLeftSectionTest categoriesFor: #testWithContent!public!tests! !

