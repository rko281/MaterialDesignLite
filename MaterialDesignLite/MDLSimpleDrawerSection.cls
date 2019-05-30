"Filed out from Dolphin Smalltalk 7"!

MDLLinkingLayoutSection subclass: #MDLSimpleDrawerSection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSimpleDrawerSection guid: (GUID fromString: '{aed5cbf7-eb95-4782-bab4-6eccae6a7361}')!
MDLSimpleDrawerSection comment: ''!
!MDLSimpleDrawerSection categoriesForClass!Material-Design-Lite-Widgets-Header! !
!MDLSimpleDrawerSection methodsFor!

renderContentOn: html	html mdlLayoutDrawer: [ 		html mdlLayoutTitle: layout title.		self renderLinksOn: html ]! !
!MDLSimpleDrawerSection categoriesFor: #renderContentOn:!private! !

