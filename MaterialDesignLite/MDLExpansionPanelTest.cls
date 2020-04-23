"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #MDLExpansionPanelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanelTest guid: (GUID fromString: '{eb012dad-3d93-423b-9a9d-04b263c26691}')!
MDLExpansionPanelTest comment: 'A MDLExpansionPanelTest is a test class for testing the behavior of MDLExpansionPanel'!
!MDLExpansionPanelTest categoriesForClass!Material-Design-Lite-Widgets-Tests-Expansion! !
!MDLExpansionPanelTest methodsFor!

testIsExpanded	| expansionPanel |	expansionPanel := MDLExpansionPanel new.	self deny: expansionPanel isExpanded.		expansionPanel isExpanded: true.	self assert: expansionPanel isExpanded.		expansionPanel isExpanded: false.	self deny: expansionPanel isExpanded.!

testIsFolded	| expansionPanel |	expansionPanel := MDLExpansionPanel new.	self assert: expansionPanel isFolded.		expansionPanel isExpanded: true.	self deny: expansionPanel isFolded.		expansionPanel isExpanded: false.	self assert: expansionPanel isFolded.!

testToggleExpansion	| expansionPanel |	expansionPanel := MDLExpansionPanel new.	expansionPanel isExpanded: true.		expansionPanel toggleExpansion.		self deny: expansionPanel isExpanded.		expansionPanel toggleExpansion.		self assert: expansionPanel isExpanded.!

testUseAjaxExpansionStrategy	| expansionPanel |	expansionPanel := MDLExpansionPanel new.		expansionPanel useAjaxExpansionStrategy.		self assert: expansionPanel expansionStrategy class equals: MDLAjaxExpansionStrategy!

testUseHideExpansionStrategy	| expansionPanel |	expansionPanel := MDLExpansionPanel new.		expansionPanel useHideExpansionStrategy.		self assert: expansionPanel expansionStrategy class equals: MDLHideExpansionStrategy!

testUseLazyExpansionStrategy	| expansionPanel |	expansionPanel := MDLExpansionPanel new.		expansionPanel useLazyExpansionStrategy.		self assert: expansionPanel expansionStrategy class equals: MDLLazyExpansionStrategy! !
!MDLExpansionPanelTest categoriesFor: #testIsExpanded!public!test! !
!MDLExpansionPanelTest categoriesFor: #testIsFolded!public!test! !
!MDLExpansionPanelTest categoriesFor: #testToggleExpansion!public!test! !
!MDLExpansionPanelTest categoriesFor: #testUseAjaxExpansionStrategy!public!test! !
!MDLExpansionPanelTest categoriesFor: #testUseHideExpansionStrategy!public!test! !
!MDLExpansionPanelTest categoriesFor: #testUseLazyExpansionStrategy!public!test! !

