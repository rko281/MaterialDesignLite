"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLTextFieldErrorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextFieldErrorTest guid: (GUID fromString: '{670e8640-155b-4c4d-80cd-fb77dd52edc1}')!
MDLTextFieldErrorTest comment: ''!
!MDLTextFieldErrorTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLTextFieldErrorTest methodsFor!

testBareBrush	self assert: [ :html | html brush: MDLTextFieldError new ] generates: '<span class="mdl-textfield__error"></span>'!

testWithContent	self assert: [ :html | html mdlTextFieldError: 'test' ] generates: '<span class="mdl-textfield__error">test</span>'! !
!MDLTextFieldErrorTest categoriesFor: #testBareBrush!public!tests! !
!MDLTextFieldErrorTest categoriesFor: #testWithContent!public!tests! !

