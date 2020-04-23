"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLLayoutHeaderRowTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutHeaderRowTest guid: (GUID fromString: '{d7dee988-796b-4b76-b09e-f63935ad27a3}')!
MDLLayoutHeaderRowTest comment: ''!
!MDLLayoutHeaderRowTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLLayoutHeaderRowTest methodsFor!

testBareBrush	self assert: [ :html | html mdlLayoutHeaderRow ] generates: '<div class="mdl-layout__header-row"></div>'!

testWithContent	self assert: [ :html | html mdlLayoutHeaderRow: 'test' ] generates: '<div class="mdl-layout__header-row">test</div>'! !
!MDLLayoutHeaderRowTest categoriesFor: #testBareBrush!public!tests! !
!MDLLayoutHeaderRowTest categoriesFor: #testWithContent!public!tests! !

