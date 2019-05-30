"Filed out from Dolphin Smalltalk 7"!

WACheckboxTag subclass: #MDLMegaFooterHeadingCheckBox
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterHeadingCheckBox guid: (GUID fromString: '{5db90254-37eb-4f11-aea3-8e64e05fc97b}')!
MDLMegaFooterHeadingCheckBox comment: 'Description--------------------Checkbox for collapsible footers inside a mega footer.Example--------------------	| sections |	sections := OrderedDictionary		with: ''Features''	-> #(''About'' ''Terms'' ''Partners'' ''Updates'')		with: ''Details'' 	-> #(''Specs'' ''Tools'' ''Ressources'')		with: ''Technology''	-> #(''How it works'' ''Patterns'' ''Usage'' ''Products'' ''Contracts'')		with: ''FAQ'' 		-> #(''Questions'' ''Answers'' ''Contact us'').	html		mdlFooter: [ html				mdlFooterMiddleSection: [ sections						keysAndValuesDo: [ :title :members | 							html								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.									html mdlFooterHeading: title.									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].			html				mdlFooterBottomSection: [ html mdlLogo: ''Title''.					html						mdlFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMegaFooterHeadingCheckBox categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMegaFooterHeadingCheckBox methodsFor!

initialize	super initialize.	self class: 'mdl-mega-footer__heading-checkbox'.	self value: true! !
!MDLMegaFooterHeadingCheckBox categoriesFor: #initialize!initialization!public! !

