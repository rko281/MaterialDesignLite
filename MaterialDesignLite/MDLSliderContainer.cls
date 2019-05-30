"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLSliderContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSliderContainer guid: (GUID fromString: '{bdf55309-7209-4086-9af5-8bf6eead1de9}')!
MDLSliderContainer comment: 'Description--------------------I am a brush to create a container for a slider.Example--------------------	html		mdlSliderContainer: [ 			| outputId |			outputId := html nextId.			html label				for: html nextId;				with: ''A better example''.			html mdlIcon: #hourglass_empty.			html mdlSlider				onInput: outputId , ''.value = '' , html lastId , ''.value'';				id: html lastId;				min: 0;				max: 10000;				step: 100;				value: 1000;				showBounds. "<- This option does not work on all browsers currently."			html output				id: outputId;				for: html lastId;				with: 1000 ]'!
!MDLSliderContainer categoriesForClass!Material-Design-Lite-Components-Forms! !
!MDLSliderContainer methodsFor!

initialize	super initialize.	self class: #'mdl-slider-container'! !
!MDLSliderContainer categoriesFor: #initialize!initialization!public! !

