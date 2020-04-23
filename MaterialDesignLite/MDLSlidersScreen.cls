"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLSlidersScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSlidersScreen guid: (GUID fromString: '{b51a4e87-546f-48c4-8bf4-be4d4d3ba74a}')!
MDLSlidersScreen comment: 'Selecting a value out of a range.'!
!MDLSlidersScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLSlidersScreen methodsFor!

advanceSlider	^ OrderedDictionary new		add: 'Advance slider' -> #renderAdvenceSliderOn:;		yourself!

renderAdvenceSliderOn: html	html		mdlSliderContainer: [ 			| outputId |			outputId := html nextId.			html label				for: html nextId;				with: 'A better example'.			html mdlIcon: #hourglass_empty.			html mdlSlider				onInput: outputId , '.value = ' , html lastId , '.value';				id: html lastId;				min: 0;				max: 10000;				step: 100;				value: 1000;				showBounds. "<- This option does not work on all browsers currently."			html output				id: outputId;				for: html lastId;				with: 1000 ]!

renderDefaultSliderOn: html	html mdlSlider		min: 0;		max: 10000;		value: 0!

renderDisabledSliderOn: html	html mdlSlider		min: 0;		max: 100;		value: 30;		disabled!

renderScreenContentOn: html	self render: self simpleSliders on: html.	html small: 'Warning: Showing bonds might not work on all browsers.'.	self render: self advanceSlider on: html!

renderStartingValueSliderOn: html	html mdlSlider		min: 0;		max: 100;		value: 75!

simpleSliders	^ OrderedDictionary new		add: 'Default Slider' -> #renderDefaultSliderOn:;		add: 'Starting value' -> #renderStartingValueSliderOn:;		add: 'Disabled slider' -> #renderDisabledSliderOn:;		yourself! !
!MDLSlidersScreen categoriesFor: #advanceSlider!public!sections! !
!MDLSlidersScreen categoriesFor: #renderAdvenceSliderOn:!demos!public! !
!MDLSlidersScreen categoriesFor: #renderDefaultSliderOn:!demos!public! !
!MDLSlidersScreen categoriesFor: #renderDisabledSliderOn:!demos!public! !
!MDLSlidersScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLSlidersScreen categoriesFor: #renderStartingValueSliderOn:!demos!public! !
!MDLSlidersScreen categoriesFor: #simpleSliders!public!sections! !

!MDLSlidersScreen class methodsFor!

icon	^ 'compslidersPng'!

title	^ 'Sliders'! !
!MDLSlidersScreen class categoriesFor: #icon!accessing!public! !
!MDLSlidersScreen class categoriesFor: #title!accessing!public! !

