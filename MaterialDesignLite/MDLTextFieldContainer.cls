"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLTextFieldContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextFieldContainer guid: (GUID fromString: '{2535a54c-c8a7-479f-97fa-11302b5e59f4}')!
MDLTextFieldContainer comment: 'Description--------------------I am a brush to create a MDL text field.Example--------------------	html		mdlTextFieldContainer: [ html mdlTextFieldLabel				for: html nextId;				with: ''Text...''.			html mdlTextFieldInput id: html lastId ]'!
!MDLTextFieldContainer categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLTextFieldContainer methodsFor!

beExpandableIf: aBoolean	aBoolean ifTrue: [ self expandable ]!

beFloatingLabelIf: aBoolean	aBoolean ifTrue: [ self floatingLabel ]!

expandable	self class: 'mdl-textfield--expandable'!

floatingLabel	self class: 'mdl-textfield--floating-label'!

initialize	super initialize.	self class: 'mdl-textfield'.	self class: 'mdl-js-textfield'! !
!MDLTextFieldContainer categoriesFor: #beExpandableIf:!options!public! !
!MDLTextFieldContainer categoriesFor: #beFloatingLabelIf:!options!public! !
!MDLTextFieldContainer categoriesFor: #expandable!options!public! !
!MDLTextFieldContainer categoriesFor: #floatingLabel!options!public! !
!MDLTextFieldContainer categoriesFor: #initialize!initialization!public! !

