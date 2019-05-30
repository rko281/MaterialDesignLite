"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLIconToggleContainerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLIconToggleContainerTest guid: (GUID fromString: '{0164675d-622d-4c30-9b71-87f6e38dc037}')!
MDLIconToggleContainerTest comment: ''!
!MDLIconToggleContainerTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLIconToggleContainerTest methodsFor!

testBareBrush	self assert: [ :html | html mdlIconToggleContainer ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle"></label>'!

testFor	self assert: [ :html | html mdlIconToggleContainer for: html nextId ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle" for="id1"></label>'!

testRippleEffect	self assert: [ :html | html mdlIconToggleContainer rippleEffect ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle mdl-js-ripple-effect"></label>'!

testRippleEffectIf	self assert: [ :html | html mdlIconToggleContainer rippleEffectIf: true ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle mdl-js-ripple-effect"></label>'.	self assert: [ :html | html mdlIconToggleContainer rippleEffectIf: false ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle"></label>'.!

testWithContent	self assert: [ :html | html mdlIconToggleContainer with: 'Test' ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle">Test</label>'! !
!MDLIconToggleContainerTest categoriesFor: #testBareBrush!public!tests! !
!MDLIconToggleContainerTest categoriesFor: #testFor!public!tests! !
!MDLIconToggleContainerTest categoriesFor: #testRippleEffect!public!tests! !
!MDLIconToggleContainerTest categoriesFor: #testRippleEffectIf!public!tests! !
!MDLIconToggleContainerTest categoriesFor: #testWithContent!public!tests! !

