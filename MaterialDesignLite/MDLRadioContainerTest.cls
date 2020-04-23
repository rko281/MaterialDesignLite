"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLRadioContainerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLRadioContainerTest guid: (GUID fromString: '{52a64d25-8040-4af4-9479-3a8e56876b34}')!
MDLRadioContainerTest comment: ''!
!MDLRadioContainerTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLRadioContainerTest methodsFor!

testBareBrush	self assert: [ :html | html mdlRadioContainer ] generates: '<label class="mdl-radio mdl-js-radio"></label>'!

testFor	self assert: [ :html | html mdlRadioContainer for: html nextId ] generates: '<label class="mdl-radio mdl-js-radio" for="id1"></label>'!

testRippleEffect	self assert: [ :html | html mdlRadioContainer rippleEffect ] generates: '<label class="mdl-radio mdl-js-radio mdl-js-ripple-effect"></label>'!

testRippleEffectIf	self assert: [ :html | html mdlRadioContainer rippleEffectIf: true ] generates: '<label class="mdl-radio mdl-js-radio mdl-js-ripple-effect"></label>'.	self assert: [ :html | html mdlRadioContainer rippleEffectIf: false ] generates: '<label class="mdl-radio mdl-js-radio"></label>'!

testWithContent	self assert: [ :html | html mdlRadioContainer with: 'test' ] generates: '<label class="mdl-radio mdl-js-radio">test</label>'! !
!MDLRadioContainerTest categoriesFor: #testBareBrush!public!tests! !
!MDLRadioContainerTest categoriesFor: #testFor!public!tests! !
!MDLRadioContainerTest categoriesFor: #testRippleEffect!public!tests! !
!MDLRadioContainerTest categoriesFor: #testRippleEffectIf!public!tests! !
!MDLRadioContainerTest categoriesFor: #testWithContent!public!tests! !

