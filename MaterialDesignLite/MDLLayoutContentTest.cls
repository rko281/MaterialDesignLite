"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLLayoutContentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutContentTest guid: (GUID fromString: '{993f1374-dccf-408e-ad7c-2720e254c224}')!
MDLLayoutContentTest comment: ''!
!MDLLayoutContentTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLLayoutContentTest methodsFor!

testBareBrush	self assert: [ :html | html mdlLayoutContent ] generates: '<main class="mdl-layout__content"></main>'!

testWithContent	self assert: [ :html | html mdlLayoutContent: 'test' ] generates: '<main class="mdl-layout__content">test</main>'! !
!MDLLayoutContentTest categoriesFor: #testBareBrush!public!tests! !
!MDLLayoutContentTest categoriesFor: #testWithContent!public!tests! !

