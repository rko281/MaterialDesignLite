"Filed out from Dolphin Smalltalk 7"!

WAUnorderedListTag subclass: #MDLMiniFooterLinkList
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMiniFooterLinkList guid: (GUID fromString: '{168a44ea-d206-4485-9647-c43ba2097978}')!
MDLMiniFooterLinkList comment: 'Description--------------------I am a brush to create a mini footer link list inside a mini footer.Example--------------------	html		mdlMiniFooter: [ html				mdlMiniFooterLeftSection: [ html mdlLogo: ''Title''.					html						mdlMiniFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMiniFooterLinkList categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMiniFooterLinkList methodsFor!

initialize	super initialize.	self class: 'mdl-mini-footer__link-list'! !
!MDLMiniFooterLinkList categoriesFor: #initialize!initialization!public! !

