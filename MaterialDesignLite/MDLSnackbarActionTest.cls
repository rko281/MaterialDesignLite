"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLSnackbarActionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSnackbarActionTest guid: (GUID fromString: '{4380834e-7034-4c08-8029-1a401ab05c97}')!
MDLSnackbarActionTest comment: ''!
!MDLSnackbarActionTest categoriesForClass!Material-Design-Lite-Components-Tests-Snackbar! !
!MDLSnackbarActionTest methodsFor!

testBareBrush	self assert: [ :html | html brush: MDLSnackbarAction new ] generates: '<button class="mdl-snackbar__action" type="submit"></button>'!

testWithContent	"Nothing for this one."! !
!MDLSnackbarActionTest categoriesFor: #testBareBrush!public!tests! !
!MDLSnackbarActionTest categoriesFor: #testWithContent!public!tests! !

