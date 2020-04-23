"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLExpansionPanelContentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanelContentTest guid: (GUID fromString: '{6d2eb6da-f8a6-4cba-bc35-d3b632f87481}')!
MDLExpansionPanelContentTest comment: 'A MDLExpansionPanelContentTest is a test class for testing the behavior of MDLExpansionPanelContent'!
!MDLExpansionPanelContentTest categoriesForClass!Material-Design-Lite-Components-Tests-ExpansionPanels! !
!MDLExpansionPanelContentTest methodsFor!

testBareBrush	self assert: [ :html | html mdlExpansionPanelContent ] generates: '<div class="mdl-expansion-panel__content"></div>'!

testWithContent	self assert: [ :html | html mdlExpansionPanelContent: 'Content.' ] generates: '<div class="mdl-expansion-panel__content">Content.</div>'! !
!MDLExpansionPanelContentTest categoriesFor: #testBareBrush!public!tests! !
!MDLExpansionPanelContentTest categoriesFor: #testWithContent!public!tests! !

