"Filed out from Dolphin Smalltalk 7"!

WALabelTag subclass: #MDLIconToggleContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLIconToggleContainer guid: (GUID fromString: '{e16f969e-5ff7-402d-8649-b3b8420c5e5d}')!
MDLIconToggleContainer comment: 'Description--------------------I am a brush to create a container for an icon toggle.Example--------------------	html mdlIconToggleContainer		rippleEffect;		for: html nextId;		with: [ html mdlIconToggle				value: true;				id: html lastId.			html mdlIconToggleLabel: ''format_bold'' ]'!
!MDLIconToggleContainer categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLIconToggleContainer methodsFor!

initialize	super initialize.	self class: 'mdl-icon-toggle'.	self class: 'mdl-js-icon-toggle'!

rippleEffect	self class: 'mdl-js-ripple-effect'!

rippleEffectIf: aBoolean	aBoolean ifTrue: [ self class: 'mdl-js-ripple-effect' ]! !
!MDLIconToggleContainer categoriesFor: #initialize!initialize/release!public! !
!MDLIconToggleContainer categoriesFor: #rippleEffect!options!public! !
!MDLIconToggleContainer categoriesFor: #rippleEffectIf:!options!public! !

