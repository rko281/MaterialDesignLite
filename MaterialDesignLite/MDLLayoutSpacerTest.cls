"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLLayoutSpacerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutSpacerTest guid: (GUID fromString: '{c8255117-56a4-4f10-846d-c1a25d5909dd}')!
MDLLayoutSpacerTest comment: ''!
!MDLLayoutSpacerTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLLayoutSpacerTest methodsFor!

testBareBrush	self assert: [ :html | html mdlLayoutSpacer ] generates: '<div class="mdl-layout-spacer"></div>'!

testWithContent	self assert: [ :html | html mdlLayoutSpacer: 'test' ] generates: '<div class="mdl-layout-spacer">test</div>'! !
!MDLLayoutSpacerTest categoriesFor: #testBareBrush!public!tests! !
!MDLLayoutSpacerTest categoriesFor: #testWithContent!public!tests! !

