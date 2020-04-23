"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLExpansionPanelHeaderTitleTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanelHeaderTitleTest guid: (GUID fromString: '{9fe4533d-264c-4db3-b71f-5f213f17e58e}')!
MDLExpansionPanelHeaderTitleTest comment: 'A MDLExpansionPanelHeaderTitleTest is a test class for testing the behavior of MDLExpansionPanelHeaderTitle'!
!MDLExpansionPanelHeaderTitleTest categoriesForClass!Material-Design-Lite-Components-Tests-ExpansionPanels! !
!MDLExpansionPanelHeaderTitleTest methodsFor!

testBareBrush	self assert: [ :html | html mdlExpansionPanelHeaderTitle ] generates: '<div class="mdl-expansion-panel__header-title"></div>'!

testWithContent	self assert: [ :html | html mdlExpansionPanelHeaderTitle: 'Hello' ] generates: '<div class="mdl-expansion-panel__header-title">Hello</div>'! !
!MDLExpansionPanelHeaderTitleTest categoriesFor: #testBareBrush!public!tests! !
!MDLExpansionPanelHeaderTitleTest categoriesFor: #testWithContent!public!tests! !

