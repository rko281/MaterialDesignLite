"Filed out from Dolphin Smalltalk 7"!

MDLFooterAbstractSection subclass: #MDLFooterDropdownSection
	instanceVariableNames: 'linksLists'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLFooterDropdownSection guid: (GUID fromString: '{86105f08-6003-41fa-8905-ea43de6b353f}')!
MDLFooterDropdownSection comment: ''!
!MDLFooterDropdownSection categoriesForClass!Material-Design-Lite-Widgets-Footer! !
!MDLFooterDropdownSection methodsFor!

addLinksLists: lists	linksLists addAll: lists!

initialize	super initialize.	linksLists := OrderedCollection new!

renderSectionOn: html	linksLists do: [ :aList | html mdlFooterDropdownSection: [ aList renderLinksWithHeaderOn: html ] ].! !
!MDLFooterDropdownSection categoriesFor: #addLinksLists:!adding!public! !
!MDLFooterDropdownSection categoriesFor: #initialize!initialization!public! !
!MDLFooterDropdownSection categoriesFor: #renderSectionOn:!public!rendering! !

