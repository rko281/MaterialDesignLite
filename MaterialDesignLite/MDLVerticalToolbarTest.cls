"Filed out from Dolphin Smalltalk 7"!

MDLAbstractSeasideTestCase subclass: #MDLVerticalToolbarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLVerticalToolbarTest guid: (GUID fromString: '{2a572c22-c3fc-4a71-bbce-75a5ff8d355e}')!
MDLVerticalToolbarTest comment: ''!
!MDLVerticalToolbarTest categoriesForClass!Material-Design-Lite-Extensions-Tests-Panels! !
!MDLVerticalToolbarTest methodsFor!

testAddAllButtons	| toolbar |	toolbar := MDLVerticalToolbar new.	self assert: toolbar buttons size equals: 0.	toolbar		addAllButtons:			{(MDLFoldButton for: '#id').			MDLPanelSwitcherButton new}.	self assert: toolbar buttons size equals: 2!

testAddButton	| toolbar |	toolbar := MDLVerticalToolbar new.	self assert: toolbar buttons size equals: 0.	toolbar addButton: (MDLFoldButton for: '#id').	self assert: toolbar buttons size equals: 1!

testChildren	| toolbar buttons |	toolbar := MDLVerticalToolbar new.	buttons := {(MDLFoldButton for: '#id').	MDLPanelSwitcherButton new}.	toolbar addAllButtons: buttons.	self assertCollection: toolbar children hasSameElements: buttons!

testRendering	self		assert: [ :html | 			html				render:					(MDLVerticalToolbar						buttons:							{(MDLFoldButton for: '#id').							MDLPanelSwitcherButton new}) ]		generatedIncludes: 'class="vertical-toolbar"'!

testResetButtonsSelection	| toolbar buttons |	toolbar := MDLVerticalToolbar new.	buttons := {(MDLFoldButton for: '#id').	(MDLPanelSwitcherButton new		select;		yourself)}.	toolbar addAllButtons: buttons.	self assert: (toolbar children anySatisfy: #isSelected).	toolbar resetButtonsSelection.	self deny: (toolbar children anySatisfy: #isSelected)! !
!MDLVerticalToolbarTest categoriesFor: #testAddAllButtons!public!tests! !
!MDLVerticalToolbarTest categoriesFor: #testAddButton!public!tests! !
!MDLVerticalToolbarTest categoriesFor: #testChildren!public!tests! !
!MDLVerticalToolbarTest categoriesFor: #testRendering!public!tests! !
!MDLVerticalToolbarTest categoriesFor: #testResetButtonsSelection!public!tests! !

