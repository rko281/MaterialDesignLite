"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLSnackbarTextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSnackbarTextTest guid: (GUID fromString: '{d64eaead-b227-4d1f-937b-1a8bca0e7604}')!
MDLSnackbarTextTest comment: ''!
!MDLSnackbarTextTest categoriesForClass!Material-Design-Lite-Components-Tests-Snackbar! !
!MDLSnackbarTextTest methodsFor!

testBareBrush	self assert: [ :html | html brush: MDLSnackbarText new ] generates: '<div class="mdl-snackbar__text"></div>'!

testWithContent	"Nothing for this one."! !
!MDLSnackbarTextTest categoriesFor: #testBareBrush!public!tests! !
!MDLSnackbarTextTest categoriesFor: #testWithContent!public!tests! !

