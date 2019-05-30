"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLMegaFooterBottomSection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterBottomSection guid: (GUID fromString: '{fb1af632-3b68-4e19-b2d0-0e93c66204e3}')!
MDLMegaFooterBottomSection comment: 'Description--------------------I am a brush to create a bottom section inside a mega footer.Example--------------------	| sections |	sections := OrderedDictionary		with: ''Features''	-> #(''About'' ''Terms'' ''Partners'' ''Updates'')		with: ''Details'' 	-> #(''Specs'' ''Tools'' ''Ressources'')		with: ''Technology''	-> #(''How it works'' ''Patterns'' ''Usage'' ''Products'' ''Contracts'')		with: ''FAQ'' 		-> #(''Questions'' ''Answers'' ''Contact us'').	html		mdlFooter: [ html				mdlFooterMiddleSection: [ sections						keysAndValuesDo: [ :title :members | 							html								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.									html mdlFooterHeading: title.									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].			html				mdlFooterBottomSection: [ html mdlLogo: ''Title''.					html						mdlFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMegaFooterBottomSection categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMegaFooterBottomSection methodsFor!

initialize	super initialize.	self class: 'mdl-mega-footer__bottom-section'! !
!MDLMegaFooterBottomSection categoriesFor: #initialize!initialization!public! !

