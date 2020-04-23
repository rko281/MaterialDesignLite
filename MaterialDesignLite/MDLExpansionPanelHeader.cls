"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLExpansionPanelHeader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanelHeader guid: (GUID fromString: '{d4441151-fc61-4bc8-ac16-b46c05029931}')!
MDLExpansionPanelHeader comment: 'Description--------------------I am a brush to create the header for a MDL Expansion Panel.'!
!MDLExpansionPanelHeader categoriesForClass!Material-Design-Lite-Components-ExpansionPanels! !
!MDLExpansionPanelHeader methodsFor!

initialize	super initialize.	self class: 'mdl-expansion-panel__header'!

toggleExpansionOnClick	self onClick: 'this.parentNode.classList.toggle("isFolded")' js! !
!MDLExpansionPanelHeader categoriesFor: #initialize!initialization!public! !
!MDLExpansionPanelHeader categoriesFor: #toggleExpansionOnClick!options!public! !

