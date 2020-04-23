"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLExpansionPanelHeaderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanelHeaderTest guid: (GUID fromString: '{701a7c62-a74c-4b0f-9492-a302079f87dd}')!
MDLExpansionPanelHeaderTest comment: 'A MDLExpansionPanelHeaderTest is a test class for testing the behavior of MDLExpansionPanelHeader'!
!MDLExpansionPanelHeaderTest categoriesForClass!Material-Design-Lite-Components-Tests-ExpansionPanels! !
!MDLExpansionPanelHeaderTest methodsFor!

testBareBrush	self assert: [ :html | html mdlExpansionPanelHeader ] generates: '<div class="mdl-expansion-panel__header"></div>'!

testToggleExpansionOnClick	self assert: [ :html | html mdlExpansionPanelHeader toggleExpansionOnClick ] generatedIncludes: 'onclick="this'!

testWithContent	self assert: [ :html | 		html mdlExpansionPanelHeader: [ 			html mdlExpansionPanelHeaderTitle: 'Hello'.			html mdlExpansionPanelHeaderDescription: 'World'.			html mdlExpansionPanelHeaderIcon: 'face' ] ] generates: '<div class="mdl-expansion-panel__header"><div class="mdl-expansion-panel__header-title">Hello</div><div class="mdl-expansion-panel__header-description">World</div><i class="material-icons mdl-expansion-panel__header-icon">face</i></div>'! !
!MDLExpansionPanelHeaderTest categoriesFor: #testBareBrush!public!tests! !
!MDLExpansionPanelHeaderTest categoriesFor: #testToggleExpansionOnClick!public!tests! !
!MDLExpansionPanelHeaderTest categoriesFor: #testWithContent!public!tests! !

