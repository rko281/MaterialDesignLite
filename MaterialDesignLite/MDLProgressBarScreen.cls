"Filed out from Dolphin Smalltalk 7"!

MDLWidgetDemo subclass: #MDLProgressBarScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLProgressBarScreen guid: (GUID fromString: '{1d0d0557-e1ea-47a5-ab49-a5555584f1d4}')!
MDLProgressBarScreen comment: 'Indicate loading and progress states.'!
!MDLProgressBarScreen categoriesForClass!Material-Design-Lite-Demo-Widgets! !
!MDLProgressBarScreen methodsFor!

hiddenProgressBar	^ OrderedDictionary with: 'Hidden progress bar' -> #renderHiddenProgressBarOn:!

renderHiddenProgressBarOn: html	| progression progressBar |	progression := 0.	html render: (progressBar := MDLProgressBarWidget progression: [ progression ]) hidden.	html break.	html mdlButton		onClick:			(progressBar showScript: html)				,					(html jQuery ajax						callback: [ [ [ progression < 1 ]								whileTrue: [ progression := progression + (1 / 10).									(Delay forSeconds: 1) wait ].							Transcript show: progression displayString ] fork ]);		with: 'Click to show'!

renderScreenContentOn: html	self		render: self synchronizedProgressBar on: html;		render: self hiddenProgressBar on: html!

renderSynchronizedProgressBarOn: html	| progression |	progression := 0.	html render: (MDLProgressBarWidget progression: [ progression ] every: 0.2 seconds).	"refresh time optional: 1s by default"	html break.	html mdlButton		onClick: (html jQuery ajax callback: [ progression := progression + 0.2 ]);		with: 'Click to progress'!

renderSynchronizedProgressBarOnTimeOn: html	| progress lastTimestamp |	progress := 0.	lastTimestamp := 0.	html		render:			(MDLProgressBarWidget				progression: [ 					(Time millisecondsSince: lastTimestamp) >= 400						ifTrue: [ progress := progress + 0.01.							lastTimestamp := Time millisecondClockValue ].					progress ]				every: 0.2 seconds)!

synchronizedProgressBar	^ OrderedDictionary		with: 'Synchronized progress bar' -> #renderSynchronizedProgressBarOn:		with: 'Synchronized progress bar 2' -> #renderSynchronizedProgressBarOnTimeOn:! !
!MDLProgressBarScreen categoriesFor: #hiddenProgressBar!public!sections! !
!MDLProgressBarScreen categoriesFor: #renderHiddenProgressBarOn:!demos!public! !
!MDLProgressBarScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLProgressBarScreen categoriesFor: #renderSynchronizedProgressBarOn:!demos!public! !
!MDLProgressBarScreen categoriesFor: #renderSynchronizedProgressBarOnTimeOn:!demos!public! !
!MDLProgressBarScreen categoriesFor: #synchronizedProgressBar!public!sections! !

!MDLProgressBarScreen class methodsFor!

icon	^ 'comploadingPng'!

title	^ 'Progress Bar'! !
!MDLProgressBarScreen class categoriesFor: #icon!accessing!public! !
!MDLProgressBarScreen class categoriesFor: #title!accessing!public! !

