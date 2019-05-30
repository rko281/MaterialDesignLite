﻿"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLDialogWidget
	instanceVariableNames: 'title content actions buttonName closeButtonName buttonBrush dialogBrush'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDialogWidget guid: (GUID fromString: '{45464c73-0b4c-4e5c-9ee3-361e5897296f}')!
MDLDialogWidget comment: 'I represent a dialog widget'!
!MDLDialogWidget categoriesForClass!Material-Design-Lite-Widgets-Dialog! !
!MDLDialogWidget methodsFor!

actions

actions: anObject

buttonBrush

buttonBrush: anObject

buttonName

buttonName: anObject

closeButtonName

closeButtonName: anObject

content

content: anObject

dialogBrush

dialogBrush: anObject

initialize

renderContentOn: html

title

title: anObject
!MDLDialogWidget categoriesFor: #actions!accessing!public! !
!MDLDialogWidget categoriesFor: #actions:!accessing!public! !
!MDLDialogWidget categoriesFor: #buttonBrush!accessing!public! !
!MDLDialogWidget categoriesFor: #buttonBrush:!accessing!public! !
!MDLDialogWidget categoriesFor: #buttonName!accessing!public! !
!MDLDialogWidget categoriesFor: #buttonName:!accessing!public! !
!MDLDialogWidget categoriesFor: #closeButtonName!accessing!public! !
!MDLDialogWidget categoriesFor: #closeButtonName:!accessing!public! !
!MDLDialogWidget categoriesFor: #content!accessing!public! !
!MDLDialogWidget categoriesFor: #content:!accessing!public! !
!MDLDialogWidget categoriesFor: #dialogBrush!accessing!public! !
!MDLDialogWidget categoriesFor: #dialogBrush:!accessing!public! !
!MDLDialogWidget categoriesFor: #initialize!initialization!public! !
!MDLDialogWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLDialogWidget categoriesFor: #title!accessing!public! !
!MDLDialogWidget categoriesFor: #title:!accessing!public! !

!MDLDialogWidget class methodsFor!

content: aBlock actions: aSecondBlock buttonName: aString

content: aBlock actions: aSecondBlock buttonName: aString closeButtonName: aSecondString

content: aBlock actions: aSecondBlock closeButtonName: aString 

content: aBlock buttonName: aString

title: aString content: aBlock actions: aSecondBlock buttonName: aSecondString

title: aString content: aBlock actions: aSecondBlock buttonName: aSecondString closeButtonName: aThirdString

title: aString content: aBlock buttonName: aSecondString

title: aString content: aBlock buttonName: aSecondString closeButtonName: aThirdString
!MDLDialogWidget class categoriesFor: #content:actions:buttonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #content:actions:buttonName:closeButtonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #content:actions:closeButtonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #content:buttonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #title:content:actions:buttonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #title:content:actions:buttonName:closeButtonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #title:content:buttonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #title:content:buttonName:closeButtonName:!instance creation!public! !
