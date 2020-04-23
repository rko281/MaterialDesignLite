"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLMegaFooterHeadingCheckBoxTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterHeadingCheckBoxTest guid: (GUID fromString: '{04804df5-74ef-4601-b190-03275e8fe895}')!
MDLMegaFooterHeadingCheckBoxTest comment: ''!
!MDLMegaFooterHeadingCheckBoxTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMegaFooterHeadingCheckBoxTest methodsFor!

testBareBrush	self assert: [ :html | html mdlFooterHeadingCheckbox ] generates: '<input class="mdl-mega-footer__heading-checkbox" checked type="checkbox"/>'!

testWithContent	"Not possible to add a content"! !
!MDLMegaFooterHeadingCheckBoxTest categoriesFor: #testBareBrush!public!tests! !
!MDLMegaFooterHeadingCheckBoxTest categoriesFor: #testWithContent!public!tests! !

