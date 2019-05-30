"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLMegaFooterTopSection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterTopSection guid: (GUID fromString: '{3ca07be4-d8b5-4421-bb85-7f2ad9b7aacd}')!
MDLMegaFooterTopSection comment: 'Description--------------------I am a brush to create a top section inside a mega footer.Example--------------------	| sections |	sections := OrderedDictionary		with: ''Features''	-> #(''About'' ''Terms'' ''Partners'' ''Updates'')		with: ''Details'' 	-> #(''Specs'' ''Tools'' ''Ressources'')		with: ''Technology''	-> #(''How it works'' ''Patterns'' ''Usage'' ''Products'' ''Contracts'')		with: ''FAQ'' 		-> #(''Questions'' ''Answers'' ''Contact us'').	html		mdlFooter: [ html				mdlFooterMiddleSection: [ sections						keysAndValuesDo: [ :title :members | 							html								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.									html mdlFooterHeading: title.									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].			html				mdlFooterBottomSection: [ html mdlLogo: ''Title''.					html						mdlFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMegaFooterTopSection categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMegaFooterTopSection methodsFor!

initialize	super initialize.	self class: 'mdl-mega-footer__top-section'! !
!MDLMegaFooterTopSection categoriesFor: #initialize!initialization!public! !

