"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLExpansionPanelTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanelTag guid: (GUID fromString: '{e224358a-4645-4125-9650-adeeb38bf198}')!
MDLExpansionPanelTag comment: 'Description--------------------I am a brush to create a MDL Expansion Panels.'!
!MDLExpansionPanelTag categoriesForClass!Material-Design-Lite-Components-ExpansionPanels! !
!MDLExpansionPanelTag methodsFor!

expand	"This method does nothing on purpose because only folded expansion panel	 get a new class named 'isFolded'.		 One can call this method to specify explicitely that the expansion panel is	 expanded.	"!

expandIf: aBoolean	"Sets the expansion panel in expanded state if aBoolean is true."	self foldIf: aBoolean not!

fold	"Sets the expansion panel in folded state."	self class: 'isFolded'!

foldIf: aBoolean	"Sets the expansion panel in folded state if aBoolean is true."	aBoolean		ifTrue: [ self fold ]!

initialize	super initialize.	self class: 'mdl-expansion-panel'! !
!MDLExpansionPanelTag categoriesFor: #expand!actions!public! !
!MDLExpansionPanelTag categoriesFor: #expandIf:!actions!public! !
!MDLExpansionPanelTag categoriesFor: #fold!actions!public! !
!MDLExpansionPanelTag categoriesFor: #foldIf:!actions!public! !
!MDLExpansionPanelTag categoriesFor: #initialize!initialization!public! !

