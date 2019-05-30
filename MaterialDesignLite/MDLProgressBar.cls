"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLProgressBar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLProgressBar guid: (GUID fromString: '{b1875c02-589e-4619-a72a-c20517dc27ce}')!
MDLProgressBar comment: 'Description--------------------I am a brush to create a loading and progress states.Example--------------------	html mdlProgressBar id: ''progressBar''.	html script: ''setInterval(function(){document.querySelector(''''#progressBar'''').MaterialProgress.setProgress(100/60* (new Date()).getSeconds());}, 1000);'' js'!
!MDLProgressBar categoriesForClass!Material-Design-Lite-Components-Loading! !
!MDLProgressBar methodsFor!

indeterminate	self class: 'mdl-progress__indeterminate'!

initialize	super initialize.	self class: 'mdl-progress'.	self class: 'mdl-js-progress'.! !
!MDLProgressBar categoriesFor: #indeterminate!options!public! !
!MDLProgressBar categoriesFor: #initialize!initialization!public! !

