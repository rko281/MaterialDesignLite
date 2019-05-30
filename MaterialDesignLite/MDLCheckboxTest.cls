"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLCheckboxTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCheckboxTest guid: (GUID fromString: '{e117e6a9-ccb8-4d7b-891c-627052973803}')!
MDLCheckboxTest comment: ''!
!MDLCheckboxTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLCheckboxTest methodsFor!

testBareBrush	self assert: [ :html | html mdlCheckbox ] generates: '<input class="mdl-checkbox__input" type="checkbox"/>'!

testValue	self assert: [ :html | html mdlCheckbox value: true ] generates: '<input class="mdl-checkbox__input" checked type="checkbox"/>'.	self assert: [ :html | html mdlCheckbox value: false ] generates: '<input class="mdl-checkbox__input" type="checkbox"/>'.!

testWithContent	"No content allowed in this one"! !
!MDLCheckboxTest categoriesFor: #testBareBrush!public!tests! !
!MDLCheckboxTest categoriesFor: #testValue!public!tests! !
!MDLCheckboxTest categoriesFor: #testWithContent!public!tests! !

