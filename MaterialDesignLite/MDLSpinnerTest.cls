"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLSpinnerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSpinnerTest guid: (GUID fromString: '{443649c6-9a3a-4d33-8156-a55f8e930b98}')!
MDLSpinnerTest comment: ''!
!MDLSpinnerTest categoriesForClass!Material-Design-Lite-Components-Tests-Loading! !
!MDLSpinnerTest methodsFor!

testBareBrush	self assert: [ :html | html mdlSpinner ] generates: '<div class="mdl-spinner mdl-js-spinner"></div>'!

testIsActive	self assert: [ :html | html mdlSpinner active ] generates: '<div class="mdl-spinner mdl-js-spinner is-active"></div>'!

testSingleColor	self assert: [ :html | html mdlSpinner singleColor ] generates: '<div class="mdl-spinner mdl-js-spinner mdl-spinner--single-color"></div>'!

testWithContent	"Not for spinners."! !
!MDLSpinnerTest categoriesFor: #testBareBrush!public!tests! !
!MDLSpinnerTest categoriesFor: #testIsActive!public!tests! !
!MDLSpinnerTest categoriesFor: #testSingleColor!public!tests! !
!MDLSpinnerTest categoriesFor: #testWithContent!public!tests! !

