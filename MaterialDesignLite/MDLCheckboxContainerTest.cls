"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLCheckboxContainerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCheckboxContainerTest guid: (GUID fromString: '{a7c37479-22a5-498c-93f3-4187e1e3658c}')!
MDLCheckboxContainerTest comment: ''!
!MDLCheckboxContainerTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLCheckboxContainerTest methodsFor!

testBareBrush	self assert: [ :html | html mdlCheckboxContainer ] generates: '<label class="mdl-checkbox mdl-js-checkbox"></label>'!

testFor	self assert: [ :html | html mdlCheckboxContainer for: html nextId ] generates: '<label class="mdl-checkbox mdl-js-checkbox" for="id1"></label>'!

testRippleEffect	self assert: [ :html | html mdlCheckboxContainer rippleEffect ] generates: '<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect"></label>'!

testRippleEffectIf	self assert: [ :html | html mdlCheckboxContainer rippleEffectIf: true ] generates: '<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect"></label>'.	self assert: [ :html | html mdlCheckboxContainer rippleEffectIf: false ] generates: '<label class="mdl-checkbox mdl-js-checkbox"></label>'.!

testWithContent	self assert: [ :html | html mdlCheckboxContainer with: 'Test' ] generates: '<label class="mdl-checkbox mdl-js-checkbox">Test</label>'! !
!MDLCheckboxContainerTest categoriesFor: #testBareBrush!public!tests! !
!MDLCheckboxContainerTest categoriesFor: #testFor!public!tests! !
!MDLCheckboxContainerTest categoriesFor: #testRippleEffect!public!tests! !
!MDLCheckboxContainerTest categoriesFor: #testRippleEffectIf!public!tests! !
!MDLCheckboxContainerTest categoriesFor: #testWithContent!public!tests! !

