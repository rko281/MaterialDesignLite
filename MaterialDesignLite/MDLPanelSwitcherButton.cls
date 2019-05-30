﻿"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLPanelSwitcherButton
	instanceVariableNames: 'panelId text actionBlock tooltip onCompleteJs id owner isSelected'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPanelSwitcherButton guid: (GUID fromString: '{5b2f6d83-6f8a-4b86-91cd-1a38953f8159}')!
MDLPanelSwitcherButton comment: 'I am a button use to change the content of a panel.
!MDLPanelSwitcherButton categoriesForClass!Material-Design-Lite-Extensions-Panels! !
!MDLPanelSwitcherButton methodsFor!

actionBlock

actionBlock: anObject

id

id: anObject

initialize

isSelected

isSelected: aBoolean 

jsOnComplete

onCompleteJs

onCompleteJs: anObject

owner

owner: aSYNVerticalToolbar 

panelId

panelId: anObject

renderContentOn: html

renderTooltipFor: anId on: html

select

text

text: anObject

tooltip

tooltip: anObject
!MDLPanelSwitcherButton categoriesFor: #actionBlock!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #actionBlock:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #id!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #id:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #initialize!initialization!public! !
!MDLPanelSwitcherButton categoriesFor: #isSelected!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #isSelected:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #jsOnComplete!javascript!public! !
!MDLPanelSwitcherButton categoriesFor: #onCompleteJs!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #onCompleteJs:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #owner!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #owner:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #panelId!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #panelId:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #renderContentOn:!public!rendering! !
!MDLPanelSwitcherButton categoriesFor: #renderTooltipFor:on:!public!rendering! !
!MDLPanelSwitcherButton categoriesFor: #select!options!public! !
!MDLPanelSwitcherButton categoriesFor: #text!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #text:!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #tooltip!accessing!public! !
!MDLPanelSwitcherButton categoriesFor: #tooltip:!accessing!public! !

!MDLPanelSwitcherButton class methodsFor!

text: aString tooltip: aTranslatedString panelId: anId actionBlock: aBlock

text: aString tooltip: aTranslatedString panelId: anId actionBlock: aBlock onComplete: aJSString

text: aString tooltip: aTranslatedString panelId: anId actionBlock: aBlock onComplete: aJSString id:  anIdBis
!MDLPanelSwitcherButton class categoriesFor: #text:tooltip:panelId:actionBlock:!instance creation!public! !
!MDLPanelSwitcherButton class categoriesFor: #text:tooltip:panelId:actionBlock:onComplete:!instance creation!public! !
!MDLPanelSwitcherButton class categoriesFor: #text:tooltip:panelId:actionBlock:onComplete:id:!instance creation!public! !
