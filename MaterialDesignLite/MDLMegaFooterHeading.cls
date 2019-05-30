"Filed out from Dolphin Smalltalk 7"!

WAHeadingTag subclass: #MDLMegaFooterHeading
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterHeading guid: (GUID fromString: '{4f7579e0-0a29-4912-afc5-a0022b238065}')!
MDLMegaFooterHeading comment: 'Description--------------------I am a brush to create a header for a mega footer inside a mega footer.Example--------------------	| sections |	sections := OrderedDictionary		with: ''Features''	-> #(''About'' ''Terms'' ''Partners'' ''Updates'')		with: ''Details'' 	-> #(''Specs'' ''Tools'' ''Ressources'')		with: ''Technology''	-> #(''How it works'' ''Patterns'' ''Usage'' ''Products'' ''Contracts'')		with: ''FAQ'' 		-> #(''Questions'' ''Answers'' ''Contact us'').	html		mdlFooter: [ html				mdlFooterMiddleSection: [ sections						keysAndValuesDo: [ :title :members | 							html								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.									html mdlFooterHeading: title.									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].			html				mdlFooterBottomSection: [ html mdlLogo: ''Title''.					html						mdlFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMegaFooterHeading categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMegaFooterHeading methodsFor!

initialize	super initialize.	self class: 'mdl-mega-footer__heading'! !
!MDLMegaFooterHeading categoriesFor: #initialize!initialization!public! !

