"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLLayoutTitleTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutTitleTest guid: (GUID fromString: '{b7d7a944-3408-47b9-88de-e99eaee74a4e}')!
MDLLayoutTitleTest comment: ''!
!MDLLayoutTitleTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLLayoutTitleTest methodsFor!

testBareBrush	self assert: [ :html | html mdlLayoutTitle ] generates: '<span class="mdl-layout-title"></span>'!

testWithContent	self assert: [ :html | html mdlLayoutTitle: 'test' ] generates: '<span class="mdl-layout-title">test</span>'! !
!MDLLayoutTitleTest categoriesFor: #testBareBrush!public!tests! !
!MDLLayoutTitleTest categoriesFor: #testWithContent!public!tests! !

