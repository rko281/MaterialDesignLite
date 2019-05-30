"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLTextFieldExpandableHolder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextFieldExpandableHolder guid: (GUID fromString: '{1e6198cb-a060-43aa-b74f-bf690769a45f}')!
MDLTextFieldExpandableHolder comment: 'Description--------------------The Material Design Lite (MDL) text field component is an enhanced version of the standard HTML <input type="text"> and <input type="textarea"> elements. A text field consists of a horizontal line indicating where keyboard input can occur and, typically, text that clearly communicates the intended contents of the text field.Example--------------------	html mdlTextFieldContainer		expandable;		style: ''width: 200px;'';		with: [ html mdlButton				labelIcon;				for: html nextId;				with: [ html mdlIcon: ''search'' ].			html				mdlTextFieldExpandableHolder: [ html mdlTextFieldInput id: html lastId.					html mdlTextFieldLabel						for: html lastId;						with: ''Expandable Input'' ] ]'!
!MDLTextFieldExpandableHolder categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLTextFieldExpandableHolder methodsFor!

initialize	super initialize.	self class: 'mdl-textfield__expandable-holder'! !
!MDLTextFieldExpandableHolder categoriesFor: #initialize!initialization!public! !

