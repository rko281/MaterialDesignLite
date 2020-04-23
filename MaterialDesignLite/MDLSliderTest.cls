"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLSliderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSliderTest guid: (GUID fromString: '{11fa71f2-8d9f-4235-a0ea-296b07ac27cd}')!
MDLSliderTest comment: ''!
!MDLSliderTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLSliderTest methodsFor!

testBareBrush	self assert: [ :html | html mdlSlider ] generates: '<input class="mdl-slider mdl-js-slider" type="range"/>'!

testShowBounds	self assert: [ :html | html mdlSlider showBounds ] generates: '<input class="mdl-slider mdl-js-slider mdl-slider-bounds" type="range"/>'!

testWithContent	"Not with this brush"! !
!MDLSliderTest categoriesFor: #testBareBrush!public!tests! !
!MDLSliderTest categoriesFor: #testShowBounds!public!tests! !
!MDLSliderTest categoriesFor: #testWithContent!public!tests! !

