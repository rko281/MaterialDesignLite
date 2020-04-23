"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLDialogContentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDialogContentTest guid: (GUID fromString: '{17092be8-bb26-45f0-8c51-2bdeccb5b031}')!
MDLDialogContentTest comment: ''!
!MDLDialogContentTest categoriesForClass!Material-Design-Lite-Components-Tests-Dialog! !
!MDLDialogContentTest methodsFor!

testBareBrush	self assert: [ :html | html mdlDialogContent ] generates: '<div class="mdl-dialog__content"></div>'!

testWithContent	self assert: [ :html | html mdlDialogContent: 'Test' ] generates: '<div class="mdl-dialog__content">Test</div>'! !
!MDLDialogContentTest categoriesFor: #testBareBrush!public!tests! !
!MDLDialogContentTest categoriesFor: #testWithContent!public!tests! !

