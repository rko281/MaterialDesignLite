"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLCardMediaWidget
	instanceVariableNames: 'content'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardMediaWidget guid: (GUID fromString: '{896a1c1b-c23e-4d86-a10c-766add90cce6}')!
MDLCardMediaWidget comment: 'I represent a card media widget'!
!MDLCardMediaWidget categoriesForClass!Material-Design-Lite-Widgets-Cards! !
!MDLCardMediaWidget methodsFor!

content: aBlock	content := aBlock!

renderContentOn: html	html mdlCardMedia: [ content value: html ]! !
!MDLCardMediaWidget categoriesFor: #content:!accessing!public! !
!MDLCardMediaWidget categoriesFor: #renderContentOn:!public!rendering! !

!MDLCardMediaWidget class methodsFor!

newWith: aBlock	^ self new		content: aBlock;		yourself! !
!MDLCardMediaWidget class categoriesFor: #newWith:!instance creation!public! !

