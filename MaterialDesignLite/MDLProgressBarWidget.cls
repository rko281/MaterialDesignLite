﻿"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLProgressBarWidget
	instanceVariableNames: 'progressionBlock refreshTime hide'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLProgressBarWidget guid: (GUID fromString: '{945880c8-96e5-49a4-b2ae-c341c1370bf3}')!
MDLProgressBarWidget comment: 'Description
!MDLProgressBarWidget categoriesForClass!Material-Design-Lite-Widgets-Loading! !
!MDLProgressBarWidget methodsFor!

hidden

hide

hide: aBoolean

initialize

progressionBlock

progressionBlock: aBlock

progressScript: html

refreshTime

refreshTime: aDuration

renderContentOn: html

showScript: html
!MDLProgressBarWidget categoriesFor: #hidden!options!public! !
!MDLProgressBarWidget categoriesFor: #hide!accessing!public! !
!MDLProgressBarWidget categoriesFor: #hide:!accessing!public! !
!MDLProgressBarWidget categoriesFor: #initialize!initialization!public! !
!MDLProgressBarWidget categoriesFor: #progressionBlock!accessing!public! !
!MDLProgressBarWidget categoriesFor: #progressionBlock:!accessing!public! !
!MDLProgressBarWidget categoriesFor: #progressScript:!javascript!public! !
!MDLProgressBarWidget categoriesFor: #refreshTime!accessing!public! !
!MDLProgressBarWidget categoriesFor: #refreshTime:!accessing!public! !
!MDLProgressBarWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLProgressBarWidget categoriesFor: #showScript:!javascript!public! !

!MDLProgressBarWidget class methodsFor!

progression: aProgressionBlock

progression: aProgressionBlock every: aDuration
!MDLProgressBarWidget class categoriesFor: #progression:!instance creation!public! !
!MDLProgressBarWidget class categoriesFor: #progression:every:!instance creation!public! !
