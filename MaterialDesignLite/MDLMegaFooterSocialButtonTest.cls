"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLMegaFooterSocialButtonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterSocialButtonTest guid: (GUID fromString: '{b034ff74-a8d8-41e4-a513-d26929145d99}')!
MDLMegaFooterSocialButtonTest comment: ''!
!MDLMegaFooterSocialButtonTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMegaFooterSocialButtonTest methodsFor!

testBareBrush	self assert: [ :html | html mdlFooterSocialButton ] generates: '<button class="mdl-mega-footer__social-btn" type="submit"></button>'!

testWithContent	self assert: [ :html | html mdlFooterSocialButton: 'Test' ] generates: '<button class="mdl-mega-footer__social-btn" type="submit">Test</button>'! !
!MDLMegaFooterSocialButtonTest categoriesFor: #testBareBrush!public!tests! !
!MDLMegaFooterSocialButtonTest categoriesFor: #testWithContent!public!tests! !

