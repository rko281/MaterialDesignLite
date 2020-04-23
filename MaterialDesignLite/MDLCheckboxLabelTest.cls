"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLCheckboxLabelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCheckboxLabelTest guid: (GUID fromString: '{6dbe9f35-035c-4929-a960-12e88cad8b40}')!
MDLCheckboxLabelTest comment: ''!
!MDLCheckboxLabelTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLCheckboxLabelTest methodsFor!

testBareBrush	self assert: [ :html | html mdlCheckboxLabel ] generates: '<span class="mdl-checkbox__label"></span>'!

testWithContent	self assert: [ :html | html mdlCheckboxLabel: 'label' ] generates: '<span class="mdl-checkbox__label">label</span>'! !
!MDLCheckboxLabelTest categoriesFor: #testBareBrush!public!tests! !
!MDLCheckboxLabelTest categoriesFor: #testWithContent!public!tests! !

