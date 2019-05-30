﻿"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLApplication
	instanceVariableNames: 'screens colors'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLApplication guid: (GUID fromString: '{b9c8c55e-fcf1-41b0-93c7-7afffc7cd978}')!
MDLApplication comment: 'Description
!MDLApplication categoriesForClass!Material-Design-Lite-Core! !
!MDLApplication methodsFor!

addScreen: aScreen

colors

colors: anObject

initialize

primaryColor: anMDLColor secondaryColor: anotherMDLColor

removeScreen: aScreen

renderContentOn: html

screens

screens: anObject

style

updateRoot: anHtmlRoot
!MDLApplication categoriesFor: #addScreen:!adding/removing!public! !
!MDLApplication categoriesFor: #colors!accessing!public! !
!MDLApplication categoriesFor: #colors:!accessing!public! !
!MDLApplication categoriesFor: #initialize!initialization!public! !
!MDLApplication categoriesFor: #primaryColor:secondaryColor:!accessing!public! !
!MDLApplication categoriesFor: #removeScreen:!adding/removing!public! !
!MDLApplication categoriesFor: #renderContentOn:!public!rendering! !
!MDLApplication categoriesFor: #screens!accessing!public! !
!MDLApplication categoriesFor: #screens:!accessing!public! !
!MDLApplication categoriesFor: #style!accessing!public! !
!MDLApplication categoriesFor: #updateRoot:!public!updating! !

!MDLApplication class methodsFor!

canBeRoot

registerToDeployment: aName

registerToDevelopment: aName
!MDLApplication class categoriesFor: #canBeRoot!public!testing! !
!MDLApplication class categoriesFor: #registerToDeployment:!instance creation!public! !
!MDLApplication class categoriesFor: #registerToDevelopment:!instance creation!public! !
