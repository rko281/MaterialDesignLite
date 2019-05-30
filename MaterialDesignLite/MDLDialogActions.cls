"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLDialogActions
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDialogActions guid: (GUID fromString: '{a3a77f9a-78a8-49a9-9ce1-959849b83ed9}')!
MDLDialogActions comment: 'Description--------------------I am a brush to create a container of dialog actions.Example--------------------	| idButtonOpen idButtonClose |	html mdlButton		openDialogWithId: (idButtonOpen := html nextId); "This will not generate an id on the button and allow you to have multiple buttons to open the same dialog."		raised;		rippleEffect;		with: ''Show dialog''.			html mdlDialog		openButtonId: idButtonOpen;		closeButtonId: (idButtonClose := html nextId);		with: [ 			html mdlDialogTitle: ''Good job !!''.			html mdlDialogContent: [ html paragraph: ''You have not managed to click the button'' ].			html				mdlDialogActions: [ html mdlButton: ''Agree''.					html mdlButton						id: idButtonClose;						with: ''Disagree'' ] ]'!
!MDLDialogActions categoriesForClass!Material-Design-Lite-Components-Dialog! !
!MDLDialogActions methodsFor!

fullWidth	"This option makes all the buttons takes the full width of the dialog."		self class: 'mdl-dialog__actions--full-width'!

initialize	super initialize.	self class: 'mdl-dialog__actions'! !
!MDLDialogActions categoriesFor: #fullWidth!options!public! !
!MDLDialogActions categoriesFor: #initialize!initialization!public! !

