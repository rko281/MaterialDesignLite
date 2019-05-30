"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLMiniFooter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMiniFooter guid: (GUID fromString: '{fa45b9b5-9a5a-45a6-8b65-6830cc39cc6a}')!
MDLMiniFooter comment: 'Description--------------------I am a brush to create a mini footer.Example--------------------	html		mdlMiniFooter: [ html				mdlMiniFooterLeftSection: [ html mdlLogo: ''Title''.					html						mdlMiniFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMiniFooter categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMiniFooter methodsFor!

initialize	super initialize.	self class: 'mdl-mini-footer'!

tag	^ 'footer'! !
!MDLMiniFooter categoriesFor: #initialize!initialization!public! !
!MDLMiniFooter categoriesFor: #tag!accessing!public! !

