"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLMegaFooterMiddleSection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterMiddleSection guid: (GUID fromString: '{7192c644-79bc-4bf2-a1f5-42ba3a7be4e4}')!
MDLMegaFooterMiddleSection comment: 'Description--------------------I am a brush to create a middle section inside a mega footer.Example--------------------	| sections |	sections := OrderedDictionary		with: ''Features''	-> #(''About'' ''Terms'' ''Partners'' ''Updates'')		with: ''Details'' 	-> #(''Specs'' ''Tools'' ''Ressources'')		with: ''Technology''	-> #(''How it works'' ''Patterns'' ''Usage'' ''Products'' ''Contracts'')		with: ''FAQ'' 		-> #(''Questions'' ''Answers'' ''Contact us'').	html		mdlFooter: [ html				mdlFooterMiddleSection: [ sections						keysAndValuesDo: [ :title :members | 							html								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.									html mdlFooterHeading: title.									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].			html				mdlFooterBottomSection: [ html mdlLogo: ''Title''.					html						mdlFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMegaFooterMiddleSection categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMegaFooterMiddleSection methodsFor!

initialize	super initialize.	self class: 'mdl-mega-footer__middle-section'! !
!MDLMegaFooterMiddleSection categoriesFor: #initialize!initialization!public! !

