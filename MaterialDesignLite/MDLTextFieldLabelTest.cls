"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLTextFieldLabelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextFieldLabelTest guid: (GUID fromString: '{6004ee35-c49f-456e-ad71-ef3e6c1a7192}')!
MDLTextFieldLabelTest comment: ''!
!MDLTextFieldLabelTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLTextFieldLabelTest methodsFor!

testBareBrush	self assert: [ :html | html brush: MDLTextFieldLabel new ] generates: '<label class="mdl-textfield__label"></label>'!

testWithContent	self assert: [ :html | html mdlTextFieldLabel: 'test' ] generates: '<label class="mdl-textfield__label">test</label>'! !
!MDLTextFieldLabelTest categoriesFor: #testBareBrush!public!tests! !
!MDLTextFieldLabelTest categoriesFor: #testWithContent!public!tests! !

