"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLSwitchLabelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSwitchLabelTest guid: (GUID fromString: '{4885bd14-d5ea-44e8-8e98-51177a70f19e}')!
MDLSwitchLabelTest comment: ''!
!MDLSwitchLabelTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLSwitchLabelTest methodsFor!

testBareBrush	self assert: [ :html | html mdlSwitchLabel ] generates: '<span class="mdl-switch__label"></span>'!

testWithContent	self assert: [ :html | html mdlSwitchLabel: 'test' ] generates: '<span class="mdl-switch__label">test</span>'! !
!MDLSwitchLabelTest categoriesFor: #testBareBrush!public!tests! !
!MDLSwitchLabelTest categoriesFor: #testWithContent!public!tests! !

