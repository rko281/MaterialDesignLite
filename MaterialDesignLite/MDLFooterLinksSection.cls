"Filed out from Dolphin Smalltalk 7"!

MDLFooterAbstractSection subclass: #MDLFooterLinksSection
	instanceVariableNames: 'linksList'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLFooterLinksSection guid: (GUID fromString: '{97b65e27-b925-47d6-817d-3e01dc1a6963}')!
MDLFooterLinksSection comment: ''!
!MDLFooterLinksSection categoriesForClass!Material-Design-Lite-Widgets-Footer! !
!MDLFooterLinksSection methodsFor!

addLinksList: aLinksList	linksList := aLinksList!

initialize	super initialize.	linksList := MDLMegaFooterLinksList new!

renderSectionOn: html	linksList renderLinksWithLogoOn: html! !
!MDLFooterLinksSection categoriesFor: #addLinksList:!adding!public! !
!MDLFooterLinksSection categoriesFor: #initialize!initialization!public! !
!MDLFooterLinksSection categoriesFor: #renderSectionOn:!public!rendering! !

