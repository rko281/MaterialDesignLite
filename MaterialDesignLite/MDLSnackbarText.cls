"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLSnackbarText
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSnackbarText guid: (GUID fromString: '{5d994fbc-4316-4176-977b-3f80e0e023b4}')!
MDLSnackbarText comment: 'Description--------------------I am a brush to create a text inside a snackbar.Example--------------------	| snackbar |	snackbar := html mdlSnackbar		message: ''Action finished.'';		timeout: 3000;		yourself.	(html mdlSnackbarButtonFor: snackbar)		raised;		rippleEffect;		with: ''Show toast'''!
!MDLSnackbarText categoriesForClass!Material-Design-Lite-Components-Snackbar! !
!MDLSnackbarText methodsFor!

initialize	super initialize.	self class: 'mdl-snackbar__text'! !
!MDLSnackbarText categoriesFor: #initialize!initialization!public! !

