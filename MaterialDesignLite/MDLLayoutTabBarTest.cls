"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLLayoutTabBarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutTabBarTest guid: (GUID fromString: '{3316b209-76ba-40a0-a366-aa70751e0c07}')!
MDLLayoutTabBarTest comment: ''!
!MDLLayoutTabBarTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLLayoutTabBarTest methodsFor!

testBareBrush	self assert: [ :html | html mdlLayoutTabBar ] generates: '<div class="mdl-layout__tab-bar"></div>'!

testRippleEffect	self assert: [ :html | html mdlLayoutTabBar rippleEffect ] generates: '<div class="mdl-layout__tab-bar mdl-js-ripple-effect"></div>'!

testRippleEffectIf	self assert: [ :html | html mdlLayoutTabBar rippleEffectIf: true ] generates: '<div class="mdl-layout__tab-bar mdl-js-ripple-effect"></div>'.	self assert: [ :html | html mdlLayoutTabBar rippleEffectIf: false ] generates: '<div class="mdl-layout__tab-bar"></div>'!

testWithContent	self assert: [ :html | html mdlLayoutTabBar: 'test' ] generates: '<div class="mdl-layout__tab-bar">test</div>'! !
!MDLLayoutTabBarTest categoriesFor: #testBareBrush!public!tests! !
!MDLLayoutTabBarTest categoriesFor: #testRippleEffect!public!tests! !
!MDLLayoutTabBarTest categoriesFor: #testRippleEffectIf!public!tests! !
!MDLLayoutTabBarTest categoriesFor: #testWithContent!public!tests! !

