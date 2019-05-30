"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLIcon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLIcon guid: (GUID fromString: '{62745746-55d6-4bb2-b91f-a07c72950edf}')!
MDLIcon comment: 'Description--------------------Material design system icons are simple, modern, friendly, and sometimes quirky. Each icon is created using our design guidelines to depict in simple and minimal forms the universal concepts used commonly throughout a UI. Ensuring readability and clarity at both large and small sizes, these icons have been optimized for beautiful display on all common platforms and display resolutions.'!
!MDLIcon categoriesForClass!Material-Design-Lite-Components-Core! !
!MDLIcon methodsFor!

chipIcon	self beChipDecoration!

initialize	super initialize.	self class: 'material-icons'!

listItemAvatar	self class: 'mdl-list__item-avatar'!

listItemIcon	self class: 'mdl-list__item-icon'!

tag	^'i'!

toggle	self class: 'mdl-icon-toggle__label'! !
!MDLIcon categoriesFor: #chipIcon!options!public! !
!MDLIcon categoriesFor: #initialize!initialization!public! !
!MDLIcon categoriesFor: #listItemAvatar!options!public! !
!MDLIcon categoriesFor: #listItemIcon!options!public! !
!MDLIcon categoriesFor: #tag!accessing!public! !
!MDLIcon categoriesFor: #toggle!options!public! !

