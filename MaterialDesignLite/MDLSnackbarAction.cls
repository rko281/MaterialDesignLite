"Filed out from Dolphin Smalltalk 7"!

WAButtonTag subclass: #MDLSnackbarAction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSnackbarAction guid: (GUID fromString: '{637e27ee-7a02-4083-89d4-7e42949b3cba}')!
MDLSnackbarAction comment: 'Description--------------------I am a brush to create an action inside a snackbar.Example--------------------	| snackbar |	snackbar := html mdlSnackbar		message: ''Action finished.'';		timeout: 3000;		yourself.	(html mdlSnackbarButtonFor: snackbar)		raised;		rippleEffect;		with: ''Show toast'''!
!MDLSnackbarAction categoriesForClass!Material-Design-Lite-Components-Snackbar! !
!MDLSnackbarAction methodsFor!

initialize	super initialize.	self class: 'mdl-snackbar__action'! !
!MDLSnackbarAction categoriesFor: #initialize!initialization!public! !

