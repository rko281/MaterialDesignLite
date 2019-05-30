"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLDialogActionsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDialogActionsTest guid: (GUID fromString: '{0aca3790-678b-42b5-8d2d-f4caf156a9e3}')!
MDLDialogActionsTest comment: ''!
!MDLDialogActionsTest categoriesForClass!Material-Design-Lite-Components-Tests-Dialog! !
!MDLDialogActionsTest methodsFor!

testBareBrush	self assert: [ :html | html mdlDialogActions ] generates: '<div class="mdl-dialog__actions"></div>'!

testFullWidth	self assert: [ :html | html mdlDialogActions fullWidth ] generates: '<div class="mdl-dialog__actions mdl-dialog__actions--full-width"></div>'!

testWithContent	self assert: [ :html | html mdlDialogActions: 'Test' ] generates: '<div class="mdl-dialog__actions">Test</div>'! !
!MDLDialogActionsTest categoriesFor: #testBareBrush!public!tests! !
!MDLDialogActionsTest categoriesFor: #testFullWidth!public!tests! !
!MDLDialogActionsTest categoriesFor: #testWithContent!public!tests! !

