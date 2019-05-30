"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLProgressBarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLProgressBarTest guid: (GUID fromString: '{f25a4bc1-f98c-4593-bcae-b4ca3a9db851}')!
MDLProgressBarTest comment: ''!
!MDLProgressBarTest categoriesForClass!Material-Design-Lite-Components-Tests-loading! !
!MDLProgressBarTest methodsFor!

testBareBrush	self assert: [ :html | html mdlProgressBar ] generates: '<div class="mdl-progress mdl-js-progress"></div>'!

testIndeterminate	self assert: [ :html | html mdlProgressBar indeterminate ] generates: '<div class="mdl-progress mdl-js-progress mdl-progress__indeterminate"></div>'!

testWithContent	"Should not have content inside."! !
!MDLProgressBarTest categoriesFor: #testBareBrush!public!tests! !
!MDLProgressBarTest categoriesFor: #testIndeterminate!public!tests! !
!MDLProgressBarTest categoriesFor: #testWithContent!public!tests! !

