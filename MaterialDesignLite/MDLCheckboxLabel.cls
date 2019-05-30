"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLCheckboxLabel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCheckboxLabel guid: (GUID fromString: '{cffbdb4f-c77f-4ad0-ad14-e2b1e5c4fdcb}')!
MDLCheckboxLabel comment: 'Description--------------------I am a brush to create a checkbox labelExample--------------------	html mdlCheckboxContainer		rippleEffect;		for: html nextId;		with: [ html mdlCheckbox				value: true;				id: html lastId.			html mdlCheckboxLabel: ''Checkbox'' ]'!
!MDLCheckboxLabel categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLCheckboxLabel methodsFor!

initialize	super initialize.	self class: 'mdl-checkbox__label'!

tag 	^ 'span'! !
!MDLCheckboxLabel categoriesFor: #initialize!initialization!public! !
!MDLCheckboxLabel categoriesFor: #tag!accessing!public! !

