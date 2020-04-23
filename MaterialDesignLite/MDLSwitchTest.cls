"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLSwitchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSwitchTest guid: (GUID fromString: '{ff65409b-cd1e-402f-a99e-c722bcd4f590}')!
MDLSwitchTest comment: ''!
!MDLSwitchTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLSwitchTest methodsFor!

testBareBrush	self assert: [ :html | html mdlSwitch ] generates: '<input class="mdl-switch__input" type="checkbox"/>'!

testWithContent	"Not for this brush"! !
!MDLSwitchTest categoriesFor: #testBareBrush!public!tests! !
!MDLSwitchTest categoriesFor: #testWithContent!public!tests! !

