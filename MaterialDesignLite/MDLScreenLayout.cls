"Filed out from Dolphin Smalltalk 7"!

WADecoration subclass: #MDLScreenLayout
	instanceVariableNames: 'layout'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLScreenLayout guid: (GUID fromString: '{419bddc1-c107-4f8b-94b4-a04fcaa95c75}')!
MDLScreenLayout comment: 'Description--------------------I am a screen footer to help with the layout management of the screen.'!
!MDLScreenLayout categoriesForClass!Material-Design-Lite-Core! !
!MDLScreenLayout methodsFor!

layout	^ layout!

layout: anObject	layout := anObject!

renderContentOn: html	layout contentBlock: [ self renderNextOn: html ].	html render: layout! !
!MDLScreenLayout categoriesFor: #layout!accessing!public! !
!MDLScreenLayout categoriesFor: #layout:!accessing!public! !
!MDLScreenLayout categoriesFor: #renderContentOn:!public!rendering! !

!MDLScreenLayout class methodsFor!

newWithLayout: aLayout	^ self new		layout: aLayout;		yourself! !
!MDLScreenLayout class categoriesFor: #newWithLayout:!instance creation!public! !

