"Filed out from Dolphin Smalltalk 7"!

WAUnorderedListTag subclass: #MDLList
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLList guid: (GUID fromString: '{dec37123-18c5-425b-a444-fbf73e6b84d3}')!
MDLList comment: 'Description--------------------I am a brush to create a MDL list.Example--------------------	html mdlList		style: ''width: 300px'';		with: [ #(''Bryan Cranston'' ''Aaron Paul'' ''Bob Odenkirk'')				do: [ :name | 					html						mdlListItem: [ html								mdlListPrimaryContent: [ html mdlIcon										listItemAvatar;										with: #person.									html text: name ].							html mdlListItemSecondaryAction								url: ''#'';								with: [ html mdlIcon: #star ] ] ] ]'!
!MDLList categoriesForClass!Material-Design-Lite-Components-List! !
!MDLList methodsFor!

initialize	super initialize.	self class: 'mdl-list'! !
!MDLList categoriesFor: #initialize!initialization!public! !

