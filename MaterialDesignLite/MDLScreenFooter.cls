"Filed out from Dolphin Smalltalk 7"!

WADecoration subclass: #MDLScreenFooter
	instanceVariableNames: 'footer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLScreenFooter guid: (GUID fromString: '{189c8cfb-ab03-4bb0-85a3-b126b0d2e3f6}')!
MDLScreenFooter comment: 'Description--------------------I am a screen footer to help with the creation of a footer.'!
!MDLScreenFooter categoriesForClass!Material-Design-Lite-Core! !
!MDLScreenFooter methodsFor!

footer	^ footer!

footer: anObject	footer := anObject!

renderContentOn: html	self renderNextOn: html.	html render: footer! !
!MDLScreenFooter categoriesFor: #footer!accessing!public! !
!MDLScreenFooter categoriesFor: #footer:!accessing!public! !
!MDLScreenFooter categoriesFor: #renderContentOn:!public!rendering! !

!MDLScreenFooter class methodsFor!

newWithFooter: aFooter	^ self new		footer: aFooter;		yourself! !
!MDLScreenFooter class categoriesFor: #newWithFooter:!instance creation!public! !

