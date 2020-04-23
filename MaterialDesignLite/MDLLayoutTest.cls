"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLLayoutTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutTest guid: (GUID fromString: '{cab131c2-b196-43a2-8c2f-fa6ca816ae95}')!
MDLLayoutTest comment: ''!
!MDLLayoutTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLLayoutTest methodsFor!

testBareBrush	self assert: [ :html | html mdlLayout ] generates: '<div class="mdl-layout mdl-js-layout"></div>'!

testFixedDrawer	self assert: [ :html | html mdlLayout fixedDrawer ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer"></div>'!

testFixedHeader	self assert: [ :html | html mdlLayout fixedHeader ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header"></div>'!

testFixedTabs	self assert: [ :html | html mdlLayout fixedTabs ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--fixed-tabs"></div>'!

testNoDesktopDrawerButton	self assert: [ :html | html mdlLayout noDesktopDrawerButton ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--no-desktop-drawer-button"></div>'!

testNoDrawerButton	self assert: [ :html | html mdlLayout noDrawerButton ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--no-drawer-button"></div>'!

testWithContent	self assert: [ :html | html mdlLayout: 'Test' ] generates: '<div class="mdl-layout mdl-js-layout">Test</div>'! !
!MDLLayoutTest categoriesFor: #testBareBrush!public!tests! !
!MDLLayoutTest categoriesFor: #testFixedDrawer!public!tests! !
!MDLLayoutTest categoriesFor: #testFixedHeader!public!tests! !
!MDLLayoutTest categoriesFor: #testFixedTabs!public!tests! !
!MDLLayoutTest categoriesFor: #testNoDesktopDrawerButton!public!tests! !
!MDLLayoutTest categoriesFor: #testNoDrawerButton!public!tests! !
!MDLLayoutTest categoriesFor: #testWithContent!public!tests! !

