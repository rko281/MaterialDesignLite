"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLRadioLabel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLRadioLabel guid: (GUID fromString: '{faab00ef-f158-407c-9be1-bb2a3da8f145}')!
MDLRadioLabel comment: 'Description--------------------I am a brush to create a label for a radio button.Example--------------------	html mdlRadioContainer		rippleEffect;		for: html nextId;		with: [ html mdlRadioButton				beChecked;				value: ''1'';				attributeAt: ''name'' put: ''options'';				id: html lastId.			html mdlRadioLabel: ''First'' ]'!
!MDLRadioLabel categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLRadioLabel methodsFor!

initialize	super initialize.	self class: 'mdl-radio__label'!

tag	^ 'span'! !
!MDLRadioLabel categoriesFor: #initialize!initialization!public! !
!MDLRadioLabel categoriesFor: #tag!accessing!public! !

