"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLExpansionPanelHeaderIconTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanelHeaderIconTest guid: (GUID fromString: '{1b36b910-d5ff-406c-ad51-8f4779f0cc01}')!
MDLExpansionPanelHeaderIconTest comment: 'A MDLExpansionPanelHeaderIconTest is a test class for testing the behavior of MDLExpansionPanelHeaderIcon'!
!MDLExpansionPanelHeaderIconTest categoriesForClass!Material-Design-Lite-Components-Tests-ExpansionPanels! !
!MDLExpansionPanelHeaderIconTest methodsFor!

testBareBrush	self assert: [ :html | html mdlExpansionPanelHeaderIcon ] generates: '<i class="material-icons mdl-expansion-panel__header-icon mdl-expansion-panel__header-icon-rotative">expand_less</i>'!

testRotateWithState	self assert: [ :html | html mdlExpansionPanelHeaderIcon rotateWithState; with: 'face' ] generates: '<i class="material-icons mdl-expansion-panel__header-icon mdl-expansion-panel__header-icon-rotative">face</i>'!

testWithContent	self assert: [ :html | html mdlExpansionPanelHeaderIcon: 'face' ] generates: '<i class="material-icons mdl-expansion-panel__header-icon">face</i>'! !
!MDLExpansionPanelHeaderIconTest categoriesFor: #testBareBrush!public!tests! !
!MDLExpansionPanelHeaderIconTest categoriesFor: #testRotateWithState!public!tests! !
!MDLExpansionPanelHeaderIconTest categoriesFor: #testWithContent!public!tests! !

