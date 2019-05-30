"Filed out from Dolphin Smalltalk 7"!

WACheckboxTag subclass: #MDLIconToggle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLIconToggle guid: (GUID fromString: '{144f810e-056e-40a5-842f-6b261821d884}')!
MDLIconToggle comment: 'Description--------------------An icon-toggle consists of a user defined icon that indicates, by visual highlighting, a binary condition that will be set or unset when the user clicks or touches it. Like checkboxes, icon-toggles may appear individually or in groups, and can be selected and deselected individually.Example--------------------	html mdlIconToggleContainer		rippleEffect;		for: html nextId;		with: [ html mdlIconToggle				value: true;				id: html lastId.			html mdlIconToggleLabel: ''format_bold'' ]'!
!MDLIconToggle categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLIconToggle methodsFor!

initialize	super initialize.	self class: 'mdl-icon-toggle__input'! !
!MDLIconToggle categoriesFor: #initialize!initialization!public! !

