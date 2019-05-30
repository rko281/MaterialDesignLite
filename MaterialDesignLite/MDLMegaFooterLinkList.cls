"Filed out from Dolphin Smalltalk 7"!

WAUnorderedListTag subclass: #MDLMegaFooterLinkList
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterLinkList guid: (GUID fromString: '{57580fa1-0e25-4e8a-8979-d41506f6d2f8}')!
MDLMegaFooterLinkList comment: 'Description--------------------I am a brush to create a Footer link list inside a mega footer.Example--------------------	| sections |	sections := OrderedDictionary		with: ''Features''	-> #(''About'' ''Terms'' ''Partners'' ''Updates'')		with: ''Details'' 	-> #(''Specs'' ''Tools'' ''Ressources'')		with: ''Technology''	-> #(''How it works'' ''Patterns'' ''Usage'' ''Products'' ''Contracts'')		with: ''FAQ'' 		-> #(''Questions'' ''Answers'' ''Contact us'').	html		mdlFooter: [ html				mdlFooterMiddleSection: [ sections						keysAndValuesDo: [ :title :members | 							html								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.									html mdlFooterHeading: title.									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].			html				mdlFooterBottomSection: [ html mdlLogo: ''Title''.					html						mdlFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMegaFooterLinkList categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMegaFooterLinkList methodsFor!

initialize	super initialize.	self class: 'mdl-mega-footer__link-list'! !
!MDLMegaFooterLinkList categoriesFor: #initialize!initialization!public! !

