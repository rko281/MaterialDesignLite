"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLIconToggleTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLIconToggleTest guid: (GUID fromString: '{20869320-86d4-414f-932e-a6679dd49b5a}')!
MDLIconToggleTest comment: ''!
!MDLIconToggleTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLIconToggleTest methodsFor!

testBareBrush	self assert: [ :html | html mdlIconToggle ] generates: '<input class="mdl-icon-toggle__input" type="checkbox"/>'!

testValue	self assert: [ :html | html mdlIconToggle value: true ] generates: '<input class="mdl-icon-toggle__input" checked type="checkbox"/>'.	self assert: [ :html | html mdlIconToggle value: false ] generates: '<input class="mdl-icon-toggle__input" type="checkbox"/>'!

testWithContent	"Not on checkboxes"! !
!MDLIconToggleTest categoriesFor: #testBareBrush!public!tests! !
!MDLIconToggleTest categoriesFor: #testValue!public!tests! !
!MDLIconToggleTest categoriesFor: #testWithContent!public!tests! !

