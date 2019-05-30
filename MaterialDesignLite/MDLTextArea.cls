"Filed out from Dolphin Smalltalk 7"!

WATextAreaTag subclass: #MDLTextArea
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextArea guid: (GUID fromString: '{86c31b3d-b109-4abe-978a-38bcb392b461}')!
MDLTextArea comment: 'Description--------------------I am a brush to create a textarea tag for mdl.Example--------------------	html		mdlTextFieldContainer: [ html mdlTextFieldLabel				for: html nextId;				with: ''Text lines...''.			html mdlTextArea				id: html lastId;				rows: 3 ]'!
!MDLTextArea categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLTextArea methodsFor!

initialize	super initialize.	self class: 'mdl-textfield__input'! !
!MDLTextArea categoriesFor: #initialize!initialization!public! !

