"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MDLExpansionStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionStrategy guid: (GUID fromString: '{907db670-4072-49c0-9ca4-ca9c0c841fdb}')!
MDLExpansionStrategy comment: 'I am an abstract expansion strategy, I define the minimal API such strategy should implement.'!
!MDLExpansionStrategy categoriesForClass!Material-Design-Lite-Widgets-Expansion! !
!MDLExpansionStrategy methodsFor!

customize: anExpansionPanelHeader in: anExpansionPanel on: html	^ self subclassResponsibility!

isAjaxExpansionStrategy	^ false!

renderExpansionPanel: anExpansionPanel contentOn: html	self subclassResponsibility! !
!MDLExpansionStrategy categoriesFor: #customize:in:on:!javascript!public! !
!MDLExpansionStrategy categoriesFor: #isAjaxExpansionStrategy!public!testing! !
!MDLExpansionStrategy categoriesFor: #renderExpansionPanel:contentOn:!public!rendering! !

