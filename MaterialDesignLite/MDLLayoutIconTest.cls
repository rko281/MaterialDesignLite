"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLLayoutIconTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutIconTest guid: (GUID fromString: '{2501179d-e64b-4000-b949-fdd5a13f77be}')!
MDLLayoutIconTest comment: ''!
!MDLLayoutIconTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLLayoutIconTest methodsFor!

testBareBrush	self assert: [ :html | html mdlLayoutIcon ] generates: '<div class="mdl-layout-icon"></div>'!

testWithContent	self assert: [ :html | html mdlLayoutIcon: 'test' ] generates: '<div class="mdl-layout-icon">test</div>'! !
!MDLLayoutIconTest categoriesFor: #testBareBrush!public!tests! !
!MDLLayoutIconTest categoriesFor: #testWithContent!public!tests! !

