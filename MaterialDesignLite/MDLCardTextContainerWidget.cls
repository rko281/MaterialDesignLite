"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLCardTextContainerWidget
	instanceVariableNames: 'content'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardTextContainerWidget guid: (GUID fromString: '{2e17e2a3-20b1-433a-bbca-0f1685a0feda}')!
MDLCardTextContainerWidget comment: 'Widget for text container'!
!MDLCardTextContainerWidget categoriesForClass!Material-Design-Lite-Widgets-Cards! !
!MDLCardTextContainerWidget methodsFor!

content: text	content := text!

renderContentOn: html	| brush |	brush := html mdlCardTextContainer.	self addPropertiesToBrush: brush.	brush with: content! !
!MDLCardTextContainerWidget categoriesFor: #content:!accessing!public! !
!MDLCardTextContainerWidget categoriesFor: #renderContentOn:!public!rendering! !

!MDLCardTextContainerWidget class methodsFor!

newWithContent: anObject	^ self new		content: anObject;		yourself!

newWithContent: anObject class: cssClasses	^ self new		content: anObject;		class: cssClasses;		yourself! !
!MDLCardTextContainerWidget class categoriesFor: #newWithContent:!instance creation!public! !
!MDLCardTextContainerWidget class categoriesFor: #newWithContent:class:!instance creation!public! !

