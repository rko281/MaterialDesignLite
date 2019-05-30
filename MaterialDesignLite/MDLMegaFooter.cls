"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLMegaFooter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooter guid: (GUID fromString: '{f9674333-4654-4b9b-bc11-9af733ab7ca0}')!
MDLMegaFooter comment: 'Description--------------------I am a brush to create a footer with columns.Example--------------------	| sections |	sections := OrderedDictionary		with: ''Features''	-> #(''About'' ''Terms'' ''Partners'' ''Updates'')		with: ''Details'' 	-> #(''Specs'' ''Tools'' ''Ressources'')		with: ''Technology''	-> #(''How it works'' ''Patterns'' ''Usage'' ''Products'' ''Contracts'')		with: ''FAQ'' 		-> #(''Questions'' ''Answers'' ''Contact us'').	html		mdlFooter: [ html				mdlFooterMiddleSection: [ sections						keysAndValuesDo: [ :title :members | 							html								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.									html mdlFooterHeading: title.									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].			html				mdlFooterBottomSection: [ html mdlLogo: ''Title''.					html						mdlFooterLinkList: [ html listItem: [ html anchor: ''Help'' ].							html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'!
!MDLMegaFooter categoriesForClass!Material-Design-Lite-Components-Footer! !
!MDLMegaFooter methodsFor!

initialize	super initialize.	self class: 'mdl-mega-footer'!

tag	^ 'footer'! !
!MDLMegaFooter categoriesFor: #initialize!initialization!public! !
!MDLMegaFooter categoriesFor: #tag!accessing!public! !

