"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLTextFieldInputHolderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextFieldInputHolderTest guid: (GUID fromString: '{e9f9fc25-4625-49df-86e9-54ff2a465328}')!
MDLTextFieldInputHolderTest comment: ''!
!MDLTextFieldInputHolderTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLTextFieldInputHolderTest methodsFor!

testBareBrush	self assert: [ :html | html mdlTextFieldInput ] generates: '<input class="mdl-textfield__input" type="text"/>'!

testPattern	self assert: [ :html | html mdlTextFieldInput pattern: '(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?!![.\n])(?=.*[A-Z])(?=.*[a-z]).*$' ] generates: '<input class="mdl-textfield__input" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?!![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" type="text"/>'!

testWithContent	"Not with inputs"! !
!MDLTextFieldInputHolderTest categoriesFor: #testBareBrush!public!tests! !
!MDLTextFieldInputHolderTest categoriesFor: #testPattern!public!tests! !
!MDLTextFieldInputHolderTest categoriesFor: #testWithContent!public!tests! !

