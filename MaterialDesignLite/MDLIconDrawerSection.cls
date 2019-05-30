"Filed out from Dolphin Smalltalk 7"!

MDLLinkingLayoutSection subclass: #MDLIconDrawerSection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLIconDrawerSection guid: (GUID fromString: '{25bc5b01-e9ed-4ee6-bf0d-a1e9e7f1a935}')!
MDLIconDrawerSection comment: ''!
!MDLIconDrawerSection categoriesForClass!Material-Design-Lite-Widgets-Header! !
!MDLIconDrawerSection methodsFor!

links: someLinks	"here links must be seaside components"	^ super links: someLinks !

renderContentOn: html	html		mdlLayoutDrawer: [ 			html mdlLayoutTitle				style: 'border-bottom: 1px solid #e0e0e0; margin: 0px 0px 16px 0px';				with: layout title.			self renderLinksOn: html ]!

renderLinksOn: html	links do: [ :aLink | html render: aLink ]! !
!MDLIconDrawerSection categoriesFor: #links:!accessing!public! !
!MDLIconDrawerSection categoriesFor: #renderContentOn:!private! !
!MDLIconDrawerSection categoriesFor: #renderLinksOn:!private! !

