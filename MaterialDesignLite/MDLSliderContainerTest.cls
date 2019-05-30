"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLSliderContainerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSliderContainerTest guid: (GUID fromString: '{fa1f7b00-ff36-4ca5-8ab2-f71a29ab3631}')!
MDLSliderContainerTest comment: ''!
!MDLSliderContainerTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLSliderContainerTest methodsFor!

testBareBrush	self assert: [ :html | html mdlSliderContainer ] generates: '<div class="mdl-slider-container"></div>'!

testWithContent	self assert: [ :html | html mdlSliderContainer: 'test' ] generates: '<div class="mdl-slider-container">test</div>'! !
!MDLSliderContainerTest categoriesFor: #testBareBrush!public!tests! !
!MDLSliderContainerTest categoriesFor: #testWithContent!public!tests! !

