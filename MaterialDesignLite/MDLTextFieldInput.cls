"Filed out from Dolphin Smalltalk 7"!

WAFormInputTag subclass: #MDLTextFieldInput
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextFieldInput guid: (GUID fromString: '{51c77260-bb80-4da0-bc68-c101ca1d1f0d}')!
MDLTextFieldInput comment: 'Description--------------------I am a brush to create a text field input.Example--------------------	html		mdlTextFieldContainer: [ html mdlTextFieldLabel				for: html nextId;				with: ''Text...''.			html mdlTextFieldInput id: html lastId ]'!
!MDLTextFieldInput categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLTextFieldInput methodsFor!

initialize	super initialize.	self class: 'mdl-textfield__input'!

pattern: aPattern	self attributeAt: 'pattern' put: aPattern!

type	^ 'text'! !
!MDLTextFieldInput categoriesFor: #initialize!initialization!public! !
!MDLTextFieldInput categoriesFor: #pattern:!accessing!public! !
!MDLTextFieldInput categoriesFor: #type!accessing!public! !

