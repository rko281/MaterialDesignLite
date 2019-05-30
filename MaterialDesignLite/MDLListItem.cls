"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLListItem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListItem guid: (GUID fromString: '{ac2ac226-0e82-40b8-8621-5bce9ab485e1}')!
MDLListItem comment: 'Description--------------------I am a brush to create a list item inside a list.Example--------------------	html mdlList		style: ''width: 300px'';		with: [ #(''Bryan Cranston'' ''Aaron Paul'' ''Bob Odenkirk'')				do: [ :name | 					html						mdlListItem: [ html								mdlListPrimaryContent: [ html mdlIcon										listItemAvatar;										with: #person.									html text: name ].							html mdlListItemSecondaryAction								url: ''#'';								with: [ html mdlIcon: #star ] ] ] ]'!
!MDLListItem categoriesForClass!Material-Design-Lite-Components-List! !
!MDLListItem methodsFor!

initialize	super initialize.	self class: 'mdl-list__item'!

tag	^ 'li'!

threeLine	self class: 'mdl-list__item--three-line'!

twoLine	self class: 'mdl-list__item--two-line'! !
!MDLListItem categoriesFor: #initialize!initialization!public! !
!MDLListItem categoriesFor: #tag!accessing!public! !
!MDLListItem categoriesFor: #threeLine!options!public! !
!MDLListItem categoriesFor: #twoLine!options!public! !

