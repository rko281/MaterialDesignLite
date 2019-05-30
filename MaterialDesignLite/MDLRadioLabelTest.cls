"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLRadioLabelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLRadioLabelTest guid: (GUID fromString: '{75bac51b-b605-4a9c-b332-5b6241f707fb}')!
MDLRadioLabelTest comment: ''!
!MDLRadioLabelTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLRadioLabelTest methodsFor!

testBareBrush	self assert: [ :html | html brush: MDLRadioLabel new ] generates: '<span class="mdl-radio__label"></span>'!

testWithContent	self assert: [ :html | html mdlRadioLabel: 'test' ] generates: '<span class="mdl-radio__label">test</span>'! !
!MDLRadioLabelTest categoriesFor: #testBareBrush!public!tests! !
!MDLRadioLabelTest categoriesFor: #testWithContent!public!tests! !

