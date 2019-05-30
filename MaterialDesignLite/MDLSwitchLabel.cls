"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLSwitchLabel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSwitchLabel guid: (GUID fromString: '{cb13d9b2-fbf0-4842-b23d-3ef8263e86af}')!
MDLSwitchLabel comment: 'Description--------------------The Material Design Lite (MDL) switch component is an enhanced version of the standard HTML <input type="checkbox"> element. A switch consists of a short horizontal "track" with a prominent circular state indicator and, typically, text that clearly communicates a binary condition that will be set or unset when the user clicks or touches it.Example--------------------	html mdlSwitchContainer		rippleEffect;		style: ''width: 150px;'';		for: html nextId;		with: [ html mdlSwitch				value: true;				id: html lastId.			html mdlSwitchLabel: ''On / Off'' ]'!
!MDLSwitchLabel categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLSwitchLabel methodsFor!

initialize	super initialize.	self class: 'mdl-switch__label'!

tag	^ 'span'! !
!MDLSwitchLabel categoriesFor: #initialize!initialization!public! !
!MDLSwitchLabel categoriesFor: #tag!accessing!public! !

