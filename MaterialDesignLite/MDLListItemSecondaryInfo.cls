"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLListItemSecondaryInfo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListItemSecondaryInfo guid: (GUID fromString: '{4723453d-8de1-4acd-908a-9abc189ba3ea}')!
MDLListItemSecondaryInfo comment: 'Description--------------------I am a brush to create informations inside a MDL list.Example--------------------	html mdlList		style: ''width: 300px'';		with: [ html mdlListItem				twoLine;				with: [ html						mdlListPrimaryContent: [ html mdlIcon								listItemAvatar;								with: #person.							html text: ''Bryan Cranston''.							html mdlListItemSubTitle: ''Appears in 62 Episodes'' ].					html						mdlListSecondaryContent: [ html mdlListItemSecondaryInfo: ''Actor''.							html mdlListItemSecondaryAction								url: ''#'';								with: [ html mdlIcon: #star ] ] ].			html mdlListItem				twoLine;				with: [ html						mdlListPrimaryContent: [ html mdlIcon								listItemAvatar;								with: #person.							html text: ''Aaron Paul''.							html mdlListItemSubTitle: ''Appears in 62 Episodes'' ].					html						mdlListSecondaryContent: [ html mdlListItemSecondaryAction								url: ''#'';								with: [ html mdlIcon: #star ] ] ].			html mdlListItem				twoLine;				with: [ html						mdlListPrimaryContent: [ html mdlIcon								listItemAvatar;								with: #person.							html text: ''Bob Odenkirk''.							html mdlListItemSubTitle: ''Appears in 62 Episodes'' ].					html						mdlListSecondaryContent: [ html mdlListItemSecondaryAction								url: ''#'';								with: [ html mdlIcon: #star ] ] ] ]'!
!MDLListItemSecondaryInfo categoriesForClass!Material-Design-Lite-Components-List! !
!MDLListItemSecondaryInfo methodsFor!

initialize	super initialize.	self class: 'mdl-list__item-secondary-info'!

tag	^'span'! !
!MDLListItemSecondaryInfo categoriesFor: #initialize!initialization!public! !
!MDLListItemSecondaryInfo categoriesFor: #tag!accessing!public! !

