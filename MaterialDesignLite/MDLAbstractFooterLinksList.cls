"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MDLAbstractFooterLinksList
	instanceVariableNames: 'links title'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAbstractFooterLinksList guid: (GUID fromString: '{7ce11948-d16f-4b68-9977-6fb7189a63df}')!
MDLAbstractFooterLinksList comment: ''!
!MDLAbstractFooterLinksList categoriesForClass!Material-Design-Lite-Widgets-Footer! !
!MDLAbstractFooterLinksList methodsFor!

addLinks: l	"Links must be formatted as followed"	title := l key.	links addAll: l value!

initialize	super initialize.	links := OrderedDictionary new!

renderLinksListOn: html	self subclassResponsibility !

renderLinksOn: html	links keysAndValuesDo: [ :label :callback | 		html listItem: [ 			html anchor				callback: callback;				with: label ] ]!

renderLinksWithHeaderOn: html	html mdlFooterHeading: title.	self renderLinksListOn: html!

renderLinksWithLogoOn: html	html mdlLogo: title.	self renderLinksListOn: html! !
!MDLAbstractFooterLinksList categoriesFor: #addLinks:!adding!public! !
!MDLAbstractFooterLinksList categoriesFor: #initialize!initialization!public! !
!MDLAbstractFooterLinksList categoriesFor: #renderLinksListOn:!private! !
!MDLAbstractFooterLinksList categoriesFor: #renderLinksOn:!private! !
!MDLAbstractFooterLinksList categoriesFor: #renderLinksWithHeaderOn:!private! !
!MDLAbstractFooterLinksList categoriesFor: #renderLinksWithLogoOn:!private! !

