"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLSpinner
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSpinner guid: (GUID fromString: '{fd9f1f61-8672-425e-bcee-a4e87f1309b3}')!
MDLSpinner comment: 'Description--------------------The Material Design Lite (MDL) spinner component is an enhanced replacement for the classic "wait cursor" .Example--------------------	html mdlSpinner active singleColor'!
!MDLSpinner categoriesForClass!Material-Design-Lite-Components-Loading! !
!MDLSpinner methodsFor!

active	self class: 'is-active'!

initialize	super 	initialize.	self class: 'mdl-spinner'.	self class: 'mdl-js-spinner'!

singleColor	self class: 'mdl-spinner--single-color'! !
!MDLSpinner categoriesFor: #active!options!public! !
!MDLSpinner categoriesFor: #initialize!initialization!public! !
!MDLSpinner categoriesFor: #singleColor!options!public! !

