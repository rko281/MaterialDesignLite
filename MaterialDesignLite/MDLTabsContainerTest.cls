"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLTabsContainerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTabsContainerTest guid: (GUID fromString: '{b3b6b29f-5110-4792-a5d4-08c577172cf4}')!
MDLTabsContainerTest comment: ''!
!MDLTabsContainerTest categoriesForClass!Material-Design-Lite-Components-Tests-Nav! !
!MDLTabsContainerTest methodsFor!

testBareBrush	self assert: [ :html | html mdlTabs ] generates: '<div class="mdl-tabs mdl-js-tabs"></div>'!

testRippleEffect	self assert: [ :html | html mdlTabs rippleEffect ] generates: '<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect"></div>'!

testRippleEffectIf	self assert: [ :html | html mdlTabs rippleEffectIf: true ] generates: '<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect"></div>'.	self assert: [ :html | html mdlTabs rippleEffectIf: false ] generates: '<div class="mdl-tabs mdl-js-tabs"></div>'.!

testWithContent	self assert: [ :html | html mdlTabs: 'test' ] generates: '<div class="mdl-tabs mdl-js-tabs">test</div>'! !
!MDLTabsContainerTest categoriesFor: #testBareBrush!public!tests! !
!MDLTabsContainerTest categoriesFor: #testRippleEffect!public!tests! !
!MDLTabsContainerTest categoriesFor: #testRippleEffectIf!public!tests! !
!MDLTabsContainerTest categoriesFor: #testWithContent!public!tests! !

