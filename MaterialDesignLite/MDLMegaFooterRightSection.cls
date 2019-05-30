"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLMegaFooterRightSection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterRightSection guid: (GUID fromString: '{e8874d42-2ef2-4b3c-941b-3f4c6847d5a1}')!
MDLMegaFooterRightSection comment: 'Description--------------------I am a brush to create a right section inside a mega footer.Example--------------------	| sections |	sections := OrderedDictionary		with: ''Features''	-> #(''About'' ''Terms'' ''Partners'' ''Updates'')		with: ''Details'' 	-> #(''Specs'' ''Tools'' ''Ressources'')		with: ''Technology''	-> #(''How it works'' ''Patterns'' ''Usage'' ''Products'' ''Contracts'')		with: ''FAQ'' 		-> #(''Questions'' ''Answers'' ''Contact us'').	html		mdlFooter: [ html				mdlFooterMiddleSection: [ sections						keysAndValuesDo: [ :title :members | 							html								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.									html mdlFooterHeading: title.									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].			html				mdlFooterBottomSection: [ html mdlLogo: ''Title''.					html						mdlFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMegaFooterRightSection categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMegaFooterRightSection methodsFor!

initialize	super initialize.	self class: 'mdl-mega-footer__right-section'! !
!MDLMegaFooterRightSection categoriesFor: #initialize!initialization!public! !

