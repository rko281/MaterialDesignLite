"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLListPrimaryContent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListPrimaryContent guid: (GUID fromString: '{44760d37-e527-4f79-9575-d35b1cf4ecb2}')!
MDLListPrimaryContent comment: 'Description--------------------I am a brush to create a primary content in a list item.Example--------------------	html mdlList		style: ''width: 300px'';		with: [ #(''Bryan Cranston'' ''Aaron Paul'' ''Bob Odenkirk'')				do: [ :name | 					html						mdlListItem: [ html								mdlListPrimaryContent: [ html mdlIcon										listItemAvatar;										with: #person.									html text: name ].							html mdlListItemSecondaryAction								url: ''#'';								with: [ html mdlIcon: #star ] ] ] ]'!
!MDLListPrimaryContent categoriesForClass!Material-Design-Lite-Components-List! !
!MDLListPrimaryContent methodsFor!

initialize	super initialize.	self class: 'mdl-list__item-primary-content'!

tag	^ 'span'! !
!MDLListPrimaryContent categoriesFor: #initialize!initialization!public! !
!MDLListPrimaryContent categoriesFor: #tag!accessing!public! !

