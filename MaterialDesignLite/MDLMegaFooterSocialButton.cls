"Filed out from Dolphin Smalltalk 7"!

WAButtonTag subclass: #MDLMegaFooterSocialButton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterSocialButton guid: (GUID fromString: '{05be8e2a-387d-4b87-9294-0d71296f87a9}')!
MDLMegaFooterSocialButton comment: 'Description--------------------I am a brush to create a social button inside a mega footer.Example--------------------	| sections |	sections := OrderedDictionary		with: ''Features''	-> #(''About'' ''Terms'' ''Partners'' ''Updates'')		with: ''Details'' 	-> #(''Specs'' ''Tools'' ''Ressources'')		with: ''Technology''	-> #(''How it works'' ''Patterns'' ''Usage'' ''Products'' ''Contracts'')		with: ''FAQ'' 		-> #(''Questions'' ''Answers'' ''Contact us'').	html		mdlFooter: [ html				mdlFooterMiddleSection: [ sections						keysAndValuesDo: [ :title :members | 							html								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.									html mdlFooterHeading: title.									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].			html				mdlFooterBottomSection: [ html mdlLogo: ''Title''.					html						mdlFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMegaFooterSocialButton categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMegaFooterSocialButton methodsFor!

initialize	super initialize.	self class: 'mdl-mega-footer__social-btn'! !
!MDLMegaFooterSocialButton categoriesFor: #initialize!initialization!public! !

