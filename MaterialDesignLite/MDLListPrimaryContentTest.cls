"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLListPrimaryContentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListPrimaryContentTest guid: (GUID fromString: '{c71e6f2d-58a8-4358-a7fc-b20c55778dcf}')!
MDLListPrimaryContentTest comment: ''!
!MDLListPrimaryContentTest categoriesForClass!Material-Design-Lite-Components-Tests-List! !
!MDLListPrimaryContentTest methodsFor!

testBareBrush	self assert: [ :html | html mdlListPrimaryContent ] generates: '<span class="mdl-list__item-primary-content"></span>'!

testWithContent	self assert: [ :html | html mdlListPrimaryContent: 'test' ] generates: '<span class="mdl-list__item-primary-content">test</span>'! !
!MDLListPrimaryContentTest categoriesFor: #testBareBrush!public!tests! !
!MDLListPrimaryContentTest categoriesFor: #testWithContent!public!tests! !

