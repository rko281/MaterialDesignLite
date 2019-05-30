"Filed out from Dolphin Smalltalk 7"!

WAHeadingTag subclass: #MDLDialogTitle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDialogTitle guid: (GUID fromString: '{2f6cd6c0-a828-4258-b31a-c0d002e459d5}')!
MDLDialogTitle comment: 'Description--------------------I am a brush to create a dialog title.Example--------------------	html mdlButton		id: html nextId;		raised;		rippleEffect;		with: ''Show second dialog''.			html mdlDialog		openButtonId: html lastId;		with: [ 			html mdlDialogTitle: ''Good job !!''.			html mdlDialogContent: [ html paragraph: ''You managed to open the dialog'' ] ]'!
!MDLDialogTitle categoriesForClass!Material-Design-Lite-Components-Dialog! !
!MDLDialogTitle methodsFor!

initialize	super initialize.	self level: 4.	self class: 'mdl-dialog__title'! !
!MDLDialogTitle categoriesFor: #initialize!initialization!public! !

