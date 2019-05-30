﻿"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLSelectWidget
	instanceVariableNames: 'choosingText labelBlock callback selectedObject possibilities description sortBlock autoSubmit customizationBlock entryTooltip'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSelectWidget guid: (GUID fromString: '{a05752bd-47ec-497a-936a-dd29799308c6}')!
MDLSelectWidget comment: 'I am a widget trying to reproduce the behavior of a select input of a form with a WDL compatible design. 
!MDLSelectWidget categoriesForClass!Material-Design-Lite-Widgets-Form! !
!MDLSelectWidget methodsFor!

addLabelMapEntryFor: anElem version: anInteger into: aDictionary

autoSubmit

autoSubmit: anObject

beAutoSubmit

buildLabelMap

callback

callback: aBlockOrSymbol

choosingText

choosingText: aString

customizationBlock

customizationBlock: anObject

defaultValueBasedOn: aLabelMap

description

description: aString

entryTooltip

entryTooltip: aBlockOrSymbol

idForMenuItemLabelled: aLabel inSelectWith: anId

initialize

jsSelectInitialization

labelBlock

labelBlock: aBlockOrSymbol

labelFor: anObject

labelFor: anElem version: anInteger

labels: aBlockOrSymbol

list: aCollection

possibilities

possibilities: aCollection

renderArrowIconFor: anId on: html

renderContentOn: html

renderLabelFor: anId on: html

renderMenuTooltipFor: anItem at: anId on: html

renderPossibilitiesFor: anId withMap: aLabelMap on: html

renderTextFieldFor: anId withMap: aLabelMap on: html

renderTooltipFor: anId on: html

selected: anObject

selectedObject

selectedObject: anObject

sortBlock

sortBlock: aBlock

standardSorting
!MDLSelectWidget categoriesFor: #addLabelMapEntryFor:version:into:!labelMap / generation!public! !
!MDLSelectWidget categoriesFor: #autoSubmit!accessing!public! !
!MDLSelectWidget categoriesFor: #autoSubmit:!accessing!public! !
!MDLSelectWidget categoriesFor: #beAutoSubmit!public!public api! !
!MDLSelectWidget categoriesFor: #buildLabelMap!labelMap / generation!public! !
!MDLSelectWidget categoriesFor: #callback!accessing!public! !
!MDLSelectWidget categoriesFor: #callback:!public!public api! !
!MDLSelectWidget categoriesFor: #choosingText!accessing!public! !
!MDLSelectWidget categoriesFor: #choosingText:!public!public api! !
!MDLSelectWidget categoriesFor: #customizationBlock!accessing!public! !
!MDLSelectWidget categoriesFor: #customizationBlock:!accessing!public! !
!MDLSelectWidget categoriesFor: #defaultValueBasedOn:!accessing!public! !
!MDLSelectWidget categoriesFor: #description!accessing!public! !
!MDLSelectWidget categoriesFor: #description:!public!public api! !
!MDLSelectWidget categoriesFor: #entryTooltip!accessing!public! !
!MDLSelectWidget categoriesFor: #entryTooltip:!accessing!public! !
!MDLSelectWidget categoriesFor: #idForMenuItemLabelled:inSelectWith:!private! !
!MDLSelectWidget categoriesFor: #initialize!initialization!public! !
!MDLSelectWidget categoriesFor: #jsSelectInitialization!javascript!public! !
!MDLSelectWidget categoriesFor: #labelBlock!accessing!public! !
!MDLSelectWidget categoriesFor: #labelBlock:!public!public api! !
!MDLSelectWidget categoriesFor: #labelFor:!accessing!public! !
!MDLSelectWidget categoriesFor: #labelFor:version:!labelMap / generation!public! !
!MDLSelectWidget categoriesFor: #labels:!public!public api / seaside compatibility! !
!MDLSelectWidget categoriesFor: #list:!public!public api / seaside compatibility! !
!MDLSelectWidget categoriesFor: #possibilities!accessing!public! !
!MDLSelectWidget categoriesFor: #possibilities:!public!public api! !
!MDLSelectWidget categoriesFor: #renderArrowIconFor:on:!public!rendering! !
!MDLSelectWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLSelectWidget categoriesFor: #renderLabelFor:on:!public!rendering! !
!MDLSelectWidget categoriesFor: #renderMenuTooltipFor:at:on:!public!rendering! !
!MDLSelectWidget categoriesFor: #renderPossibilitiesFor:withMap:on:!public!rendering! !
!MDLSelectWidget categoriesFor: #renderTextFieldFor:withMap:on:!public!rendering! !
!MDLSelectWidget categoriesFor: #renderTooltipFor:on:!public!rendering! !
!MDLSelectWidget categoriesFor: #selected:!public!public api / seaside compatibility! !
!MDLSelectWidget categoriesFor: #selectedObject!accessing!public! !
!MDLSelectWidget categoriesFor: #selectedObject:!public!public api! !
!MDLSelectWidget categoriesFor: #sortBlock!accessing!public! !
!MDLSelectWidget categoriesFor: #sortBlock:!public!public api! !
!MDLSelectWidget categoriesFor: #standardSorting!public!public api! !

!MDLSelectWidget class methodsFor!

possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock

possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock selectedObject: anObject

possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock selectedObject: anObject tooltip: aString

possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock selectedObject: anObject tooltip: aString sortBlock: aSortBlock
!MDLSelectWidget class categoriesFor: #possibilities:inputLabel:labelBlock:callback:!instance creation!public! !
!MDLSelectWidget class categoriesFor: #possibilities:inputLabel:labelBlock:callback:selectedObject:!instance creation!public! !
!MDLSelectWidget class categoriesFor: #possibilities:inputLabel:labelBlock:callback:selectedObject:tooltip:!instance creation!public! !
!MDLSelectWidget class categoriesFor: #possibilities:inputLabel:labelBlock:callback:selectedObject:tooltip:sortBlock:!instance creation!public! !
