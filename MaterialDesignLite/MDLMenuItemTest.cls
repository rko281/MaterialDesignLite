"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLMenuItemTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMenuItemTest guid: (GUID fromString: '{da4bcb8b-96cc-4d6f-a37e-6cf0fe83978e}')!
MDLMenuItemTest comment: ''!
!MDLMenuItemTest categoriesForClass!Material-Design-Lite-Components-Tests-Nav! !
!MDLMenuItemTest methodsFor!

testBareBrush	self assert: [ :html | html mdlMenuItem ] generates: '<li class="mdl-menu__item"></li>'!

testDisabled	self assert: [ :html | html mdlMenuItem disabled ] generates: '<li class="mdl-menu__item" disabled="true"></li>'!

testFullBleedDivider	self assert: [ :html | html mdlMenuItem fullBleedDivider ] generates: '<li class="mdl-menu__item mdl-menu__item--full-bleed-divider"></li>'!

testWithContent	self assert: [ :html | html mdlMenuItem: 'test' ] generates: '<li class="mdl-menu__item">test</li>'! !
!MDLMenuItemTest categoriesFor: #testBareBrush!public!tests! !
!MDLMenuItemTest categoriesFor: #testDisabled!public!tests! !
!MDLMenuItemTest categoriesFor: #testFullBleedDivider!public!tests! !
!MDLMenuItemTest categoriesFor: #testWithContent!public!tests! !

