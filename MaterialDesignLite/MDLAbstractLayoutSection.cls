"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLAbstractLayoutSection
	instanceVariableNames: 'layout'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAbstractLayoutSection guid: (GUID fromString: '{8932e4af-def3-41e0-a486-162e0618a6d6}')!
MDLAbstractLayoutSection comment: ''!
!MDLAbstractLayoutSection categoriesForClass!Material-Design-Lite-Widgets-Header! !
!MDLAbstractLayoutSection methodsFor!

layout	^ layout!

layout: anObject	layout := anObject!

renderContentOn: html	self subclassResponsibility! !
!MDLAbstractLayoutSection categoriesFor: #layout!accessing!public! !
!MDLAbstractLayoutSection categoriesFor: #layout:!accessing!public! !
!MDLAbstractLayoutSection categoriesFor: #renderContentOn:!public!rendering! !

