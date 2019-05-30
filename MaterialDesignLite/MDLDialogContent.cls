"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLDialogContent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDialogContent guid: (GUID fromString: '{657a30fb-9733-43d5-a9ec-2859fe24a38b}')!
MDLDialogContent comment: 'Description--------------------I am a brush to create a container for a dialog content.Example--------------------	html mdlButton		id: html nextId;		raised;		rippleEffect;		with: ''Show second dialog''.			html mdlDialog		openButtonId: html lastId;		with: [ 			html mdlDialogTitle: ''Good job !!''.			html mdlDialogContent: [ html paragraph: ''You managed to open the dialog'' ] ]'!
!MDLDialogContent categoriesForClass!Material-Design-Lite-Components-Dialog! !
!MDLDialogContent methodsFor!

initialize	super initialize.	self class: 'mdl-dialog__content'! !
!MDLDialogContent categoriesFor: #initialize!initialization!public! !

