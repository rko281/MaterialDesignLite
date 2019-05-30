"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLListItemTextBodyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListItemTextBodyTest guid: (GUID fromString: '{a1698258-67c0-46a2-b3ae-dcbe6b86c9b6}')!
MDLListItemTextBodyTest comment: ''!
!MDLListItemTextBodyTest categoriesForClass!Material-Design-Lite-Components-Tests-List! !
!MDLListItemTextBodyTest methodsFor!

testBareBrush	self assert: [ :html | html mdlListItemTextBody ] generates: '<span class="mdl-list__item-text-body"></span>'!

testWithContent	self assert: [ :html | html mdlListItemTextBody: 'test' ] generates: '<span class="mdl-list__item-text-body">test</span>'! !
!MDLListItemTextBodyTest categoriesFor: #testBareBrush!public!tests! !
!MDLListItemTextBodyTest categoriesFor: #testWithContent!public!tests! !

