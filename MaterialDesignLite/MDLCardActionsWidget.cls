"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLCardActionsWidget
	instanceVariableNames: 'componentOrBlocks bordered'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardActionsWidget guid: (GUID fromString: '{9cb1557f-d074-4b16-b075-d57765d0f3f5}')!
MDLCardActionsWidget comment: 'Widget for actions'!
!MDLCardActionsWidget categoriesForClass!Material-Design-Lite-Widgets-Cards! !
!MDLCardActionsWidget methodsFor!

addComponentOrBlock: aComponentOrBlock	componentOrBlocks add: aComponentOrBlock!

beBordered	bordered := true!

initialize	super initialize.	bordered := false.	componentOrBlocks := OrderedCollection new!

renderContentOn: html	| cardActions |	cardActions := html mdlCardActions.	self addPropertiesToBrush: cardActions.	bordered		ifTrue: [ cardActions border ].	cardActions		with: [ componentOrBlocks				do: [ :aComponentOrBlock | 					aComponentOrBlock isBlock						ifTrue: [ aComponentOrBlock cull: html ]						ifFalse: [ html render: aComponentOrBlock ] ] ]! !
!MDLCardActionsWidget categoriesFor: #addComponentOrBlock:!adding!public! !
!MDLCardActionsWidget categoriesFor: #beBordered!options!public! !
!MDLCardActionsWidget categoriesFor: #initialize!initialization!public! !
!MDLCardActionsWidget categoriesFor: #renderContentOn:!public!rendering! !

