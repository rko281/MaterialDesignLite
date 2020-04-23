"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLExpansionPanelTagTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanelTagTest guid: (GUID fromString: '{04f30fdb-f663-411a-995c-96d5031d82eb}')!
MDLExpansionPanelTagTest comment: 'A MDLExpansionPanelTagTest is a test class for testing the behavior of MDLExpansionPanelTag'!
!MDLExpansionPanelTagTest categoriesForClass!Material-Design-Lite-Components-Tests-ExpansionPanels! !
!MDLExpansionPanelTagTest methodsFor!

testBareBrush	self assert: [ :html | html mdlExpansionPanel ] generates: '<div class="mdl-expansion-panel"></div>'!

testBareBrushExpanded	self assert: [ :html | html mdlExpansionPanel expand ] generates: '<div class="mdl-expansion-panel"></div>'!

testBareBrushFolded	self assert: [ :html | html mdlExpansionPanel fold ] generates: '<div class="mdl-expansion-panel isFolded"></div>'!

testExpandIf	self assert: [ :html | html mdlExpansionPanel expandIf: false ] generates: '<div class="mdl-expansion-panel isFolded"></div>'!

testExpandIf2	self assert: [ :html | html mdlExpansionPanel expandIf: true ] generates: '<div class="mdl-expansion-panel"></div>'!

testFoldIf	self assert: [ :html | html mdlExpansionPanel foldIf: true ] generates: '<div class="mdl-expansion-panel isFolded"></div>'!

testFoldIf2	self assert: [ :html | html mdlExpansionPanel foldIf: false ] generates: '<div class="mdl-expansion-panel"></div>'!

testWithContent	self assert: [ :html | 		html mdlExpansionPanel: [			html mdlExpansionPanelHeader: [ 				html mdlExpansionPanelHeaderTitle: 'Hello'.				html mdlExpansionPanelHeaderDescription: 'World'.				html mdlExpansionPanelHeaderIcon: 'face' ].			html mdlExpansionPanelContent: 'Content.' ] ] generates: '<div class="mdl-expansion-panel"><div class="mdl-expansion-panel__header"><div class="mdl-expansion-panel__header-title">Hello</div><div class="mdl-expansion-panel__header-description">World</div><i class="material-icons mdl-expansion-panel__header-icon">face</i></div><div class="mdl-expansion-panel__content">Content.</div></div>'! !
!MDLExpansionPanelTagTest categoriesFor: #testBareBrush!public!tests! !
!MDLExpansionPanelTagTest categoriesFor: #testBareBrushExpanded!public!tests! !
!MDLExpansionPanelTagTest categoriesFor: #testBareBrushFolded!public!tests! !
!MDLExpansionPanelTagTest categoriesFor: #testExpandIf!public!tests! !
!MDLExpansionPanelTagTest categoriesFor: #testExpandIf2!public!tests! !
!MDLExpansionPanelTagTest categoriesFor: #testFoldIf!public!tests! !
!MDLExpansionPanelTagTest categoriesFor: #testFoldIf2!public!tests! !
!MDLExpansionPanelTagTest categoriesFor: #testWithContent!public!tests! !

