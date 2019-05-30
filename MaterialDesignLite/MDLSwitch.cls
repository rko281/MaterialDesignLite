"Filed out from Dolphin Smalltalk 7"!

WACheckboxTag subclass: #MDLSwitch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSwitch guid: (GUID fromString: '{67f85c74-7fdd-4d4c-a566-38553dc63c30}')!
MDLSwitch comment: 'Description--------------------The Material Design Lite (MDL) switch component is an enhanced version of the standard HTML <input type="checkbox"> element. A switch consists of a short horizontal "track" with a prominent circular state indicator and, typically, text that clearly communicates a binary condition that will be set or unset when the user clicks or touches it.Example--------------------	html mdlSwitchContainer		rippleEffect;		style: ''width: 150px;'';		for: html nextId;		with: [ html mdlSwitch				value: true;				id: html lastId.			html mdlSwitchLabel: ''On / Off'' ]'!
!MDLSwitch categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLSwitch methodsFor!

initialize	super initialize.	self class: 'mdl-switch__input'! !
!MDLSwitch categoriesFor: #initialize!initialization!public! !

