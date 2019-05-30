"Filed out from Dolphin Smalltalk 7"!

WAAnchorTag subclass: #MDLListItemSecondaryAction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListItemSecondaryAction guid: (GUID fromString: '{c15a8cb1-dd57-462e-a6eb-76e170cfda77}')!
MDLListItemSecondaryAction comment: 'Description--------------------I am a brush to create an action inside a MDL list.Example--------------------	html mdlList		style: ''width: 300px'';		with: [ #(''Bryan Cranston'' ''Aaron Paul'' ''Bob Odenkirk'')				do: [ :name | 					html						mdlListItem: [ html								mdlListPrimaryContent: [ html mdlIcon										listItemAvatar;										with: #person.									html text: name ].							html mdlListItemSecondaryAction								url: ''#'';								with: [ html mdlIcon: #star ] ] ] ]'!
!MDLListItemSecondaryAction categoriesForClass!Material-Design-Lite-Components-List! !
!MDLListItemSecondaryAction methodsFor!

initialize	super initialize.	self class: 'mdl-list__item-secondary-action'! !
!MDLListItemSecondaryAction categoriesFor: #initialize!initialization!public! !

