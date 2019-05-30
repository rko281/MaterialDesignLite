"Filed out from Dolphin Smalltalk 7"!

MDLAbstractHeaderSection subclass: #MDLSimpleRowHeaderSection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSimpleRowHeaderSection guid: (GUID fromString: '{d79a2cea-17b9-4982-83c0-5fc133852712}')!
MDLSimpleRowHeaderSection comment: ''!
!MDLSimpleRowHeaderSection categoriesForClass!Material-Design-Lite-Widgets-Header! !
!MDLSimpleRowHeaderSection methodsFor!

renderContentOn: html	(html brush: brush)		with: [ 			html				mdlLayoutHeaderRow: [ 					html mdlLayoutTitle: layout title.					self renderLinksOn: html ] ]! !
!MDLSimpleRowHeaderSection categoriesFor: #renderContentOn:!public!rendering! !

