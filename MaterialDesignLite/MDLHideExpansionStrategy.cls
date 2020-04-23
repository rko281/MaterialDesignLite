"Filed out from Dolphin Smalltalk 7"!

MDLExpansionStrategy subclass: #MDLHideExpansionStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLHideExpansionStrategy guid: (GUID fromString: '{492ce63a-96c8-4480-aa9e-0615be2ad6d6}')!
MDLHideExpansionStrategy comment: 'I am an expansion strategy that uses CSS properties to hide the expansion panel content when it should not be shown.I also use a little of javascript to update the icon according to the state of the panel.'!
!MDLHideExpansionStrategy categoriesForClass!Material-Design-Lite-Widgets-Expansion! !
!MDLHideExpansionStrategy methodsFor!

customize: anExpansionPanelHeader in: anExpansionPanel on: html	"Do nothing here."	!

renderExpansionPanel: anExpansionPanel contentOn: html	anExpansionPanel expandedBlock value: html! !
!MDLHideExpansionStrategy categoriesFor: #customize:in:on:!javascript!public! !
!MDLHideExpansionStrategy categoriesFor: #renderExpansionPanel:contentOn:!public!rendering! !

