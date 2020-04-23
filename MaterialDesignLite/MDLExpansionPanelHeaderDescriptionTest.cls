"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLExpansionPanelHeaderDescriptionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanelHeaderDescriptionTest guid: (GUID fromString: '{6ffa5947-8279-4cb4-9089-64c4d49b7442}')!
MDLExpansionPanelHeaderDescriptionTest comment: 'A MDLExpansionPanelHeaderDescriptionTest is a test class for testing the behavior of MDLExpansionPanelHeaderDescription'!
!MDLExpansionPanelHeaderDescriptionTest categoriesForClass!Material-Design-Lite-Components-Tests-ExpansionPanels! !
!MDLExpansionPanelHeaderDescriptionTest methodsFor!

testBareBrush	self assert: [ :html | html mdlExpansionPanelHeaderDescription ] generates: '<div class="mdl-expansion-panel__header-description"></div>'!

testWithContent	self assert: [ :html | html mdlExpansionPanelHeaderDescription: 'Desc.' ] generates: '<div class="mdl-expansion-panel__header-description">Desc.</div>'! !
!MDLExpansionPanelHeaderDescriptionTest categoriesFor: #testBareBrush!public!tests! !
!MDLExpansionPanelHeaderDescriptionTest categoriesFor: #testWithContent!public!tests! !

