"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLRadioButtonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLRadioButtonTest guid: (GUID fromString: '{3acbe734-37bc-475f-ab95-655232f95ea3}')!
MDLRadioButtonTest comment: ''!
!MDLRadioButtonTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLRadioButtonTest methodsFor!

testBareBrush	self assert: [ :html | html mdlRadioButton ] generates: '<input class="mdl-radio__button" type="radio"/>'!

testWithContent	"Not with this tag"! !
!MDLRadioButtonTest categoriesFor: #testBareBrush!public!tests! !
!MDLRadioButtonTest categoriesFor: #testWithContent!public!tests! !

