"Filed out from Dolphin Smalltalk 7"!

WALabelTag subclass: #MDLSwitchContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSwitchContainer guid: (GUID fromString: '{cb514047-42d8-4c8d-b75b-f39c6fb11c5d}')!
MDLSwitchContainer comment: 'Description--------------------The Material Design Lite (MDL) switch component is an enhanced version of the standard HTML <input type="checkbox"> element. A switch consists of a short horizontal "track" with a prominent circular state indicator and, typically, text that clearly communicates a binary condition that will be set or unset when the user clicks or touches it.Example--------------------	html mdlSwitchContainer		rippleEffect;		style: ''width: 150px;'';		for: html nextId;		with: [ html mdlSwitch				value: true;				id: html lastId.			html mdlSwitchLabel: ''On / Off'' ]'!
!MDLSwitchContainer categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLSwitchContainer methodsFor!

initialize	super initialize.	self class: 'mdl-switch'.	self class: 'mdl-js-switch'!

rippleEffect	self class: 'mdl-js-ripple-effect'!

rippleEffectIf: aBoolean	aBoolean ifTrue: [ self rippleEffect ]! !
!MDLSwitchContainer categoriesFor: #initialize!initialization!public! !
!MDLSwitchContainer categoriesFor: #rippleEffect!options!public! !
!MDLSwitchContainer categoriesFor: #rippleEffectIf:!options!public! !

