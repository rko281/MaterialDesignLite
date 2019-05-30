"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLLayoutDrawerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutDrawerTest guid: (GUID fromString: '{dcf9790b-75fa-44d2-8790-60f74e90158d}')!
MDLLayoutDrawerTest comment: ''!
!MDLLayoutDrawerTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLLayoutDrawerTest methodsFor!

testBareBrush	self assert: [ :html | html mdlLayoutDrawer ] generates: '<div class="mdl-layout__drawer"></div>'!

testWithContent	self assert: [ :html | html mdlLayoutDrawer: 'test' ] generates: '<div class="mdl-layout__drawer">test</div>'! !
!MDLLayoutDrawerTest categoriesFor: #testBareBrush!public!tests! !
!MDLLayoutDrawerTest categoriesFor: #testWithContent!public!tests! !

