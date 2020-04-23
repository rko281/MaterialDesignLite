"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLSwitchContainerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSwitchContainerTest guid: (GUID fromString: '{647e14e7-1b6d-4609-a9f3-2b343f85a6b6}')!
MDLSwitchContainerTest comment: ''!
!MDLSwitchContainerTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLSwitchContainerTest methodsFor!

testBareBrush	self assert: [ :html | html mdlSwitchContainer ] generates: '<label class="mdl-switch mdl-js-switch"></label>'!

testFor	self assert: [ :html | html mdlSwitchContainer for: html nextId ] generates: '<label class="mdl-switch mdl-js-switch" for="id1"></label>'!

testRippleEffect	self assert: [ :html | html mdlSwitchContainer rippleEffect ] generates: '<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"></label>'!

testRippleEffectIf	self assert: [ :html | html mdlSwitchContainer rippleEffectIf: true ] generates: '<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"></label>'.	self assert: [ :html | html mdlSwitchContainer rippleEffectIf: false ] generates: '<label class="mdl-switch mdl-js-switch"></label>'!

testWithContent	self assert: [ :html | html mdlSwitchContainer with: 'test' ] generates: '<label class="mdl-switch mdl-js-switch">test</label>'! !
!MDLSwitchContainerTest categoriesFor: #testBareBrush!public!tests! !
!MDLSwitchContainerTest categoriesFor: #testFor!public!tests! !
!MDLSwitchContainerTest categoriesFor: #testRippleEffect!public!tests! !
!MDLSwitchContainerTest categoriesFor: #testRippleEffectIf!public!tests! !
!MDLSwitchContainerTest categoriesFor: #testWithContent!public!tests! !

