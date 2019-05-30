﻿"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLCardTextContainerWidget
	instanceVariableNames: 'content'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardTextContainerWidget guid: (GUID fromString: '{2e17e2a3-20b1-433a-bbca-0f1685a0feda}')!
MDLCardTextContainerWidget comment: 'Widget for text container'!
!MDLCardTextContainerWidget categoriesForClass!Material-Design-Lite-Widgets-Cards! !
!MDLCardTextContainerWidget methodsFor!

content: text

renderContentOn: html
!MDLCardTextContainerWidget categoriesFor: #content:!accessing!public! !
!MDLCardTextContainerWidget categoriesFor: #renderContentOn:!public!rendering! !

!MDLCardTextContainerWidget class methodsFor!

newWithContent: anObject

newWithContent: anObject class: cssClasses
!MDLCardTextContainerWidget class categoriesFor: #newWithContent:!instance creation!public! !
!MDLCardTextContainerWidget class categoriesFor: #newWithContent:class:!instance creation!public! !
