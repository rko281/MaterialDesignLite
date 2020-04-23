"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLMenuTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMenuTest guid: (GUID fromString: '{36f70965-e3f0-459b-a5b6-e4ecf4d6f26c}')!
MDLMenuTest comment: ''!
!MDLMenuTest categoriesForClass!Material-Design-Lite-Components-Tests-Nav! !
!MDLMenuTest methodsFor!

testBareBrush	self assert: [ :html | html mdlMenu ] generates: '<ul class="mdl-menu mdl-js-menu"></ul>'!

testBottomLeft	self assert: [ :html | html mdlMenu bottomLeft ] generates: '<ul class="mdl-menu mdl-js-menu mdl-menu--bottom-left"></ul>'!

testBottomRight	self assert: [ :html | html mdlMenu bottomRight ] generates: '<ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right"></ul>'!

testFor	self assert: [ :html | html mdlMenu for: html nextId ] generates: '<ul class="mdl-menu mdl-js-menu" for="id1"></ul>'!

testRippleEffect	self assert: [ :html | html mdlMenu rippleEffect ] generates: '<ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect"></ul>'!

testRippleEffectIf	self assert: [ :html | html mdlMenu rippleEffectIf: true ] generates: '<ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect"></ul>'.	self assert: [ :html | html mdlMenu rippleEffectIf: false ] generates: '<ul class="mdl-menu mdl-js-menu"></ul>'!

testTopLeft	self assert: [ :html | html mdlMenu topLeft ] generates: '<ul class="mdl-menu mdl-js-menu mdl-menu--top-left"></ul>'!

testTopRight	self assert: [ :html | html mdlMenu topRight ] generates: '<ul class="mdl-menu mdl-js-menu mdl-menu--top-right"></ul>'!

testWithContent	self assert: [ :html | html mdlMenu with: 'Test' ] generates: '<ul class="mdl-menu mdl-js-menu">Test</ul>'! !
!MDLMenuTest categoriesFor: #testBareBrush!public!tests! !
!MDLMenuTest categoriesFor: #testBottomLeft!public!tests! !
!MDLMenuTest categoriesFor: #testBottomRight!public!tests! !
!MDLMenuTest categoriesFor: #testFor!public!tests! !
!MDLMenuTest categoriesFor: #testRippleEffect!public!tests! !
!MDLMenuTest categoriesFor: #testRippleEffectIf!public!tests! !
!MDLMenuTest categoriesFor: #testTopLeft!public!tests! !
!MDLMenuTest categoriesFor: #testTopRight!public!tests! !
!MDLMenuTest categoriesFor: #testWithContent!public!tests! !

