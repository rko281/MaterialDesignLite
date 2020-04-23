"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLLoadingScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLoadingScreen guid: (GUID fromString: '{47029c97-9c2b-4f7b-a1fb-247b4bcfd1a3}')!
MDLLoadingScreen comment: 'Indicate loading and progress states.'!
!MDLLoadingScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLLoadingScreen methodsFor!

bufferingProgressBar	^ OrderedDictionary new		add: 'Buffering' -> #renderBufferingProgressBarOn:;		yourself!

indeterminateProgressBar	^ OrderedDictionary new		add: 'Indeterminate' -> #renderIndeterminateProgressBarOn:;		yourself!

progressBar	^ OrderedDictionary new		add: 'Default' -> #renderProgressBarOn:;		yourself!

renderBufferingProgressBarOn: html	html mdlProgressBar id: 'bufferingProgressBar'.	html		script:			'document.querySelector(''#bufferingProgressBar'').addEventListener(''mdl-componentupgraded'', function() {	this.MaterialProgress.setProgress(33);	this.MaterialProgress.setBuffer(87);});'!

renderDefaultSpinnerOn: html	html mdlSpinner active!

renderIndeterminateProgressBarOn: html	html mdlProgressBar indeterminate!

renderProgressBarOn: html	html mdlProgressBar id: 'progressBar'.	html script: 'setInterval(function(){document.querySelector(''#progressBar'').MaterialProgress.setProgress(100/60* (new Date()).getSeconds());}, 1000);' js!

renderScreenContentOn: html	self renderTocOn: html.	html heading level5		class: 'section-title';		id: 'progress-bar';		with: 'PROGRESS BAR'.	self		render: self progressBar on: html;		render: self indeterminateProgressBar on: html;		render: self bufferingProgressBar on: html.	html heading level5		class: 'section-title';		id: 'spinner';		with: 'SPINNER'.	self render: self spinner on: html!

renderSingleColorSpinnerOn: html	html mdlSpinner active singleColor!

sections	^ OrderedDictionary with: '#progress-bar' -> 'Progress bar' with: '#spinner' -> 'Spinner'!

spinner	^ OrderedDictionary new		add: 'Default' -> #renderDefaultSpinnerOn:;		add: 'Single color' -> #renderSingleColorSpinnerOn:;		yourself! !
!MDLLoadingScreen categoriesFor: #bufferingProgressBar!public!sections! !
!MDLLoadingScreen categoriesFor: #indeterminateProgressBar!public!sections! !
!MDLLoadingScreen categoriesFor: #progressBar!public!sections! !
!MDLLoadingScreen categoriesFor: #renderBufferingProgressBarOn:!demos!public! !
!MDLLoadingScreen categoriesFor: #renderDefaultSpinnerOn:!demos!public! !
!MDLLoadingScreen categoriesFor: #renderIndeterminateProgressBarOn:!demos!public! !
!MDLLoadingScreen categoriesFor: #renderProgressBarOn:!demos!public! !
!MDLLoadingScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLLoadingScreen categoriesFor: #renderSingleColorSpinnerOn:!demos!public! !
!MDLLoadingScreen categoriesFor: #sections!accessing!public! !
!MDLLoadingScreen categoriesFor: #spinner!public!sections! !

!MDLLoadingScreen class methodsFor!

icon	^ 'comploadingPng'!

title	^ 'Loading'! !
!MDLLoadingScreen class categoriesFor: #icon!accessing!public! !
!MDLLoadingScreen class categoriesFor: #title!accessing!public! !

