"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLTextFieldError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextFieldError guid: (GUID fromString: '{5518bd42-5d08-4be2-b337-309552b16cb4}')!
MDLTextFieldError comment: 'Description--------------------I am a brush to create a text field error.Example--------------------	html mdlTextFieldContainer		floatingLabel;		with: [ html mdlTextFieldLabel				for: html nextId;				with: ''Number...''.			html mdlTextFieldInput				id: html lastId;				pattern: ''-?[0-9]*(\.[0-9]+)?''.			html mdlTextFieldError: ''Input is not a number !!'' ]'!
!MDLTextFieldError categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLTextFieldError methodsFor!

initialize	super initialize.	self class: 'mdl-textfield__error'!

tag	^ 'span'! !
!MDLTextFieldError categoriesFor: #initialize!initialization!public! !
!MDLTextFieldError categoriesFor: #tag!accessing!public! !

