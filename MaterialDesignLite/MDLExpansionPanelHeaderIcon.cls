"Filed out from Dolphin Smalltalk 7"!

MDLIcon subclass: #MDLExpansionPanelHeaderIcon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanelHeaderIcon guid: (GUID fromString: '{482500a2-16da-42de-a027-bd3c98f98a57}')!
MDLExpansionPanelHeaderIcon comment: 'Description--------------------I am a brush to create the icon for a MDL Expansion Panel Header.'!
!MDLExpansionPanelHeaderIcon categoriesForClass!Material-Design-Lite-Components-ExpansionPanels! !
!MDLExpansionPanelHeaderIcon methodsFor!

initialize	super initialize.	self class: 'mdl-expansion-panel__header-icon'!

rotateWithState	self class: 'mdl-expansion-panel__header-icon-rotative'!

with: anObject	anObject		ifNil: [			self rotateWithState.			super with: #expand_less ]		ifNotNil: [ super with: anObject  ]! !
!MDLExpansionPanelHeaderIcon categoriesFor: #initialize!initialization!public! !
!MDLExpansionPanelHeaderIcon categoriesFor: #rotateWithState!initialization!public! !
!MDLExpansionPanelHeaderIcon categoriesFor: #with:!public! !

