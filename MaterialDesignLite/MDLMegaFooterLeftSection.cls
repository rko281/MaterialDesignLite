"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLMegaFooterLeftSection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterLeftSection guid: (GUID fromString: '{202874cc-0743-48a6-8de1-e60d8dab1d51}')!
MDLMegaFooterLeftSection comment: 'Description--------------------I am a brush to create a left section inside a mega footer.Example--------------------	| sections |	sections := OrderedDictionary		with: ''Features''	-> #(''About'' ''Terms'' ''Partners'' ''Updates'')		with: ''Details'' 	-> #(''Specs'' ''Tools'' ''Ressources'')		with: ''Technology''	-> #(''How it works'' ''Patterns'' ''Usage'' ''Products'' ''Contracts'')		with: ''FAQ'' 		-> #(''Questions'' ''Answers'' ''Contact us'').	html		mdlFooter: [ html				mdlFooterMiddleSection: [ sections						keysAndValuesDo: [ :title :members | 							html								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.									html mdlFooterHeading: title.									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].			html				mdlFooterBottomSection: [ html mdlLogo: ''Title''.					html						mdlFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMegaFooterLeftSection categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMegaFooterLeftSection methodsFor!

initialize	super initialize.	self class: 'mdl-mega-footer__left-section'! !
!MDLMegaFooterLeftSection categoriesFor: #initialize!initialization!public! !

