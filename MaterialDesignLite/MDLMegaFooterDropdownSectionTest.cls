"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLMegaFooterDropdownSectionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterDropdownSectionTest guid: (GUID fromString: '{15ca53be-f459-4a8c-9654-719ca62c5c14}')!
MDLMegaFooterDropdownSectionTest comment: ''!
!MDLMegaFooterDropdownSectionTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMegaFooterDropdownSectionTest methodsFor!

testBareBrush	self assert: [ :html | html mdlFooterDropdownSection ] generates: '<div class="mdl-mega-footer__drop-down-section"></div>'!

testWithContent	self assert: [ :html | html mdlFooterDropdownSection: 'Test' ] generates: '<div class="mdl-mega-footer__drop-down-section">Test</div>'! !
!MDLMegaFooterDropdownSectionTest categoriesFor: #testBareBrush!public!tests! !
!MDLMegaFooterDropdownSectionTest categoriesFor: #testWithContent!public!tests! !

