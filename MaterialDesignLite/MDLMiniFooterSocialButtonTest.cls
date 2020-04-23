"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLMiniFooterSocialButtonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMiniFooterSocialButtonTest guid: (GUID fromString: '{0b9f2bc5-5a28-4f11-b287-3376b951196a}')!
MDLMiniFooterSocialButtonTest comment: ''!
!MDLMiniFooterSocialButtonTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMiniFooterSocialButtonTest methodsFor!

testBareBrush	self assert: [ :html | html mdlMiniFooterSocialButton ] generates: '<button class="mdl-mini-footer__social-btn" type="submit"></button>'!

testWithContent	self assert: [ :html | html mdlMiniFooterSocialButton: 'Test' ] generates: '<button class="mdl-mini-footer__social-btn" type="submit">Test</button>'! !
!MDLMiniFooterSocialButtonTest categoriesFor: #testBareBrush!public!tests! !
!MDLMiniFooterSocialButtonTest categoriesFor: #testWithContent!public!tests! !

