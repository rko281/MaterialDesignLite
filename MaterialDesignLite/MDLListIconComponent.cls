﻿"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLListIconComponent
	instanceVariableNames: 'label helpText'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListIconComponent guid: (GUID fromString: '{edd6bd2c-453a-4f7b-aaef-ce9468396256}')!
MDLListIconComponent comment: 'I am a simple component to display a MDL icon with an help text. My main purpose is to serve in a MDLNestedList to display a MDL icon.'!
!MDLListIconComponent categoriesForClass!Material-Design-Lite-Widgets-List! !
!MDLListIconComponent methodsFor!

helpText

helpText: anObject

label

label: anObject

renderContentOn: html
!MDLListIconComponent categoriesFor: #helpText!accessing!public! !
!MDLListIconComponent categoriesFor: #helpText:!accessing!public! !
!MDLListIconComponent categoriesFor: #label!accessing!public! !
!MDLListIconComponent categoriesFor: #label:!accessing!public! !
!MDLListIconComponent categoriesFor: #renderContentOn:!public!rendering! !

!MDLListIconComponent class methodsFor!

named: aString helpText: aTranslatedString
!MDLListIconComponent class categoriesFor: #named:helpText:!instance creation!public! !
