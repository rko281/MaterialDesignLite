"Filed out from Dolphin Smalltalk 7"!

WALabelTag subclass: #MDLCheckboxContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCheckboxContainer guid: (GUID fromString: '{b501d57a-377f-4b83-8dcd-7bdafbd3a4a5}')!
MDLCheckboxContainer comment: 'Description--------------------I am a brush to create a checkbox containerExample--------------------	html mdlCheckboxContainer		rippleEffect;		for: html nextId;		with: [ html mdlCheckbox				value: true;				id: html lastId.			html mdlCheckboxLabel: ''Checkbox'' ]'!
!MDLCheckboxContainer categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLCheckboxContainer methodsFor!

initialize	super initialize.	self class: 'mdl-checkbox'.	self class: 'mdl-js-checkbox'!

rippleEffect	self class: 'mdl-js-ripple-effect'!

rippleEffectIf: aBoolean	aBoolean		ifTrue: [ self rippleEffect ]! !
!MDLCheckboxContainer categoriesFor: #initialize!initialization!public! !
!MDLCheckboxContainer categoriesFor: #rippleEffect!options!public! !
!MDLCheckboxContainer categoriesFor: #rippleEffectIf:!options!public! !

