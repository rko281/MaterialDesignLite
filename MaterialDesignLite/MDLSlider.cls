"Filed out from Dolphin Smalltalk 7"!

WARangeInputTag subclass: #MDLSlider
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSlider guid: (GUID fromString: '{1671bf89-09b0-47f6-98e5-f367273eacc9}')!
MDLSlider comment: 'Description--------------------The Material Design Lite (MDL) slider component is an enhanced version of the new HTML5 <input type="range"> element. A slider consists of a horizontal line upon which sits a small, movable disc (the thumb) and, typically, text that clearly communicates a value that will be set when the user moves it.Example--------------------	html mdlSlider		min: 0;		max: 100;		value: 75'!
!MDLSlider categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLSlider methodsFor!

initialize	super initialize.	self class: 'mdl-slider'.	self class: 'mdl-js-slider'.!

showBounds	"This option currently does not work on some browsers"		self class: 'mdl-slider-bounds'! !
!MDLSlider categoriesFor: #initialize!initialization!public! !
!MDLSlider categoriesFor: #showBounds!options!public! !

