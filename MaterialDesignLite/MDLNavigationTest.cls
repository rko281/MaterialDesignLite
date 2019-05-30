"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLNavigationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNavigationTest guid: (GUID fromString: '{faed7e9e-c43a-4d87-8a0b-3ed34c8879c8}')!
MDLNavigationTest comment: ''!
!MDLNavigationTest categoriesForClass!Material-Design-Lite-Components-Tests-Nav! !
!MDLNavigationTest methodsFor!

testBareBrush	self assert: [ :html | html mdlNavigation ] generates: '<nav class="mdl-navigation"></nav>'!

testWithContent	self assert: [ :html | html mdlNavigation: 'test' ] generates: '<nav class="mdl-navigation">test</nav>'! !
!MDLNavigationTest categoriesFor: #testBareBrush!public!tests! !
!MDLNavigationTest categoriesFor: #testWithContent!public!tests! !

