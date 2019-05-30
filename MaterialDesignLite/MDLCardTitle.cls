"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLCardTitle
	instanceVariableNames: 'level title'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardTitle guid: (GUID fromString: '{c281cb5b-7740-410a-821b-e06165edc256}')!
MDLCardTitle comment: 'I represent a widget for card title'!
!MDLCardTitle categoriesForClass!Material-Design-Lite-Widgets-Cards! !
!MDLCardTitle methodsFor!

initialize	super initialize.	level := 2.!

level	^ level!

level: anObject	level := anObject!

renderContentOn: html	| brush |	brush := html mdlCardTitleContainer.	self addPropertiesToBrush: brush.	brush with: [ html mdlCardTitleText: self title level: self level ]!

title	^ title!

title: anObject	title := anObject! !
!MDLCardTitle categoriesFor: #initialize!initialization!public! !
!MDLCardTitle categoriesFor: #level!accessing!public! !
!MDLCardTitle categoriesFor: #level:!accessing!public! !
!MDLCardTitle categoriesFor: #renderContentOn:!public!rendering! !
!MDLCardTitle categoriesFor: #title!accessing!public! !
!MDLCardTitle categoriesFor: #title:!accessing!public! !

!MDLCardTitle class methodsFor!

newWithTitle: aString level: aNumber	^ self new		title: aString;		level: aNumber;		yourself!

newWithTitle: aString level: aNumber class: cssClasses	^ self new		title: aString;		level: aNumber;		class: cssClasses;		yourself! !
!MDLCardTitle class categoriesFor: #newWithTitle:level:!instance creation!public! !
!MDLCardTitle class categoriesFor: #newWithTitle:level:class:!instance creation!public! !

