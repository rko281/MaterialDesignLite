"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLMegaFooterDropdownSection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterDropdownSection guid: (GUID fromString: '{39fcbfb6-21c2-44bb-ab4d-8270d0b20870}')!
MDLMegaFooterDropdownSection comment: 'Description--------------------I am a brush to create a dropdown section inside a mega footer.Example--------------------	| sections |	sections := OrderedDictionary		with: ''Features''	-> #(''About'' ''Terms'' ''Partners'' ''Updates'')		with: ''Details'' 	-> #(''Specs'' ''Tools'' ''Ressources'')		with: ''Technology''	-> #(''How it works'' ''Patterns'' ''Usage'' ''Products'' ''Contracts'')		with: ''FAQ'' 		-> #(''Questions'' ''Answers'' ''Contact us'').	html		mdlFooter: [ html				mdlFooterMiddleSection: [ sections						keysAndValuesDo: [ :title :members | 							html								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.									html mdlFooterHeading: title.									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].			html				mdlFooterBottomSection: [ html mdlLogo: ''Title''.					html						mdlFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMegaFooterDropdownSection categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMegaFooterDropdownSection methodsFor!

initialize	super initialize.	self class: 'mdl-mega-footer__drop-down-section'! !
!MDLMegaFooterDropdownSection categoriesFor: #initialize!initialization!public! !

