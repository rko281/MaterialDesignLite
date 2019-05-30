"Filed out from Dolphin Smalltalk 7"!

WALabelTag subclass: #MDLRadioContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLRadioContainer guid: (GUID fromString: '{11a72bb3-815b-4338-b4bb-27d2266c5942}')!
MDLRadioContainer comment: 'Description--------------------I am a brush to create a container for a radio button.Example--------------------	html mdlRadioContainer		rippleEffect;		for: html nextId;		with: [ html mdlRadioButton				beChecked;				value: ''1'';				attributeAt: ''name'' put: ''options'';				id: html lastId.			html mdlRadioLabel: ''First'' ]'!
!MDLRadioContainer categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLRadioContainer methodsFor!

initialize	super initialize.	self class: 'mdl-radio'.	self class: 'mdl-js-radio'!

rippleEffect	self class: 'mdl-js-ripple-effect'!

rippleEffectIf: aBoolean	aBoolean ifTrue: [ self rippleEffect ]! !
!MDLRadioContainer categoriesFor: #initialize!initialization!public! !
!MDLRadioContainer categoriesFor: #rippleEffect!options!public! !
!MDLRadioContainer categoriesFor: #rippleEffectIf:!options!public! !

