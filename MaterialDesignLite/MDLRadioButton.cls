"Filed out from Dolphin Smalltalk 7"!

WARadioButtonTag subclass: #MDLRadioButton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLRadioButton guid: (GUID fromString: '{ca465396-fd4e-4102-8920-20af20673284}')!
MDLRadioButton comment: 'Description--------------------I am a brush to create a MDL radio button.Example--------------------	html mdlRadioContainer		rippleEffect;		for: html nextId;		with: [ html mdlRadioButton				beChecked;				value: ''1'';				attributeAt: ''name'' put: ''options'';				id: html lastId.			html mdlRadioLabel: ''First'' ]'!
!MDLRadioButton categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLRadioButton methodsFor!

initialize	super initialize.	self class: 'mdl-radio__button'! !
!MDLRadioButton categoriesFor: #initialize!initialization!public! !

