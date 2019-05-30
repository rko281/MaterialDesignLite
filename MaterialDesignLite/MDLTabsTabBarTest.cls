"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLTabsTabBarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTabsTabBarTest guid: (GUID fromString: '{16fb0f9e-36cc-4930-bbd5-90c73b084dc5}')!
MDLTabsTabBarTest comment: ''!
!MDLTabsTabBarTest categoriesForClass!Material-Design-Lite-Components-Tests-Nav! !
!MDLTabsTabBarTest methodsFor!

testBareBrush	self assert: [ :html | html mdlTabBar ] generates: '<div class="mdl-tabs__tab-bar"></div>'!

testRippleEffect	self assert: [ :html | html mdlTabBar rippleEffect ] generates: '<div class="mdl-tabs__tab-bar mdl-js-ripple-effect"></div>'!

testRippleEffectIf	self assert: [ :html | html mdlTabBar rippleEffectIf: true ] generates: '<div class="mdl-tabs__tab-bar mdl-js-ripple-effect"></div>'.	self assert: [ :html | html mdlTabBar rippleEffectIf: false ] generates: '<div class="mdl-tabs__tab-bar"></div>'.!

testWithContent	self assert: [ :html | html mdlTabBar: 'test' ] generates: '<div class="mdl-tabs__tab-bar">test</div>'! !
!MDLTabsTabBarTest categoriesFor: #testBareBrush!public!tests! !
!MDLTabsTabBarTest categoriesFor: #testRippleEffect!public!tests! !
!MDLTabsTabBarTest categoriesFor: #testRippleEffectIf!public!tests! !
!MDLTabsTabBarTest categoriesFor: #testWithContent!public!tests! !

