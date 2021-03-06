﻿"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLListsScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListsScreen guid: (GUID fromString: '{6cb8e03e-ee94-47f9-ade4-f6d3cf67b39e}')!
MDLListsScreen comment: 'Customizable scrollable lists.'!
!MDLListsScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLListsScreen methodsFor!

avatarActionsList	^ OrderedDictionary new		add: 'Avatars and actions ' -> #renderAvatarActionsListOn:;		yourself!

avatarControlsList	^ OrderedDictionary new		add: 'Avatars and controls ' -> #renderAvatarControlsListOn:;		yourself!

iconsList	^ OrderedDictionary new		add: 'Icons ' -> #renderIconsListOn:;		yourself!

renderAvatarActionsListOn: html	html mdlList		style: 'width: 300px';		with: [ #('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk')				do: [ :name | 					html						mdlListItem: [ html								mdlListPrimaryContent: [ html mdlIcon										listItemAvatar;										with: #person.									html text: name ].							html mdlListItemSecondaryAction								url: '#';								with: [ html mdlIcon: #star ] ] ] ]!

renderAvatarControlsListOn: html	html mdlList		style: 'width: 300px';		with: [ html				mdlListItem: [ html						mdlListPrimaryContent: [ html mdlIcon								listItemAvatar;								with: #person.							html text: 'Bryan Cranston' ].					html mdlListItemSecondaryAction						with: [ html mdlCheckboxContainer								for: html nextId;								with: [ html mdlCheckbox										id: html lastId;										value: true ] ] ].			html				mdlListItem: [ html						mdlListPrimaryContent: [ html mdlIcon								listItemAvatar;								with: #person.							html text: 'Aaron Paul' ].					html mdlListItemSecondaryAction						with: [ html mdlRadioContainer								style: 'display: inline;';								for: html nextId;								rippleEffect;								with: [ html mdlRadioButton										id: html lastId;										value: '1';										name: 'options' ] ] ].			html				mdlListItem: [ html						mdlListPrimaryContent: [ html mdlIcon								listItemAvatar;								with: #person.							html text: 'Bob Odenkirk' ].					html mdlListItemSecondaryAction						with: [ html mdlSwitchContainer								for: html nextId;								with: [ html mdlSwitch										id: html lastId;										value: '1'.									html mdlSwitchLabel ] ] ] ]!

renderIconsListOn: html	html mdlList		style: 'width: 300px';		with: [ #('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk')				do: [ :name | 					html						mdlListItem: [ html								mdlListPrimaryContent: [ html mdlIcon										listItemIcon;										with: #person.									html text: name ] ] ] ]!

renderScreenContentOn: html	self		render: self simpleList on: html;		render: self iconsList on: html;		render: self avatarActionsList on: html;		render: self avatarControlsList on: html;		render: self twoLineList on: html;		render: self threeLineList on: html!

renderSimpleListOn: html	html mdlList		style: 'width: 300px';		with: [ 			#('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk') do: [ :name | html mdlListItem: [ html mdlListPrimaryContent: name ] ] ]!

renderThreeLineListOn: html	| actors |	actors := OrderedDictionary		with: 'Bryan Cranston' 	-> 'Bryan Cranston played the role of Walter in Breaking Bad. He is also known for playing Hal in Malcom in the Middle.'		with: 'Aaron Paul' 	-> 'Aaron Paul played the role of Jesse in Breaking Bad. He also featured in the "Need For Speed" Movie.'		with: 'Bob Odenkirk'	-> 'Bob Odinkrik played the role of Saul in Breaking Bad. Due to public fondness for the character, Bob stars in his own show now, called "Better Call Saul".'.	html mdlList		style: 'width: 650px';		with: [ actors				keysAndValuesDo: [ :actor :descr | 					html mdlListItem						threeLine;						with: [ html								mdlListPrimaryContent: [ html mdlIcon										listItemAvatar;										with: #person.									html text: actor.									html mdlListItemTextBody: descr ].							html								mdlListSecondaryContent: [ html mdlListItemSecondaryAction										url: '#';										with: [ html mdlIcon: #star ] ] ] ] ]!

renderTwoLineListOn: html	html mdlList		style: 'width: 300px';		with: [ html mdlListItem				twoLine;				with: [ html						mdlListPrimaryContent: [ html mdlIcon								listItemAvatar;								with: #person.							html text: 'Bryan Cranston'.							html mdlListItemSubTitle: 'Appears in 62 Episodes' ].					html						mdlListSecondaryContent: [ html mdlListItemSecondaryInfo: 'Actor'.							html mdlListItemSecondaryAction								url: '#';								with: [ html mdlIcon: #star ] ] ].			html mdlListItem				twoLine;				with: [ html						mdlListPrimaryContent: [ html mdlIcon								listItemAvatar;								with: #person.							html text: 'Aaron Paul'.							html mdlListItemSubTitle: 'Appears in 62 Episodes' ].					html						mdlListSecondaryContent: [ html mdlListItemSecondaryAction								url: '#';								with: [ html mdlIcon: #star ] ] ].			html mdlListItem				twoLine;				with: [ html						mdlListPrimaryContent: [ html mdlIcon								listItemAvatar;								with: #person.							html text: 'Bob Odenkirk'.							html mdlListItemSubTitle: 'Appears in 62 Episodes' ].					html						mdlListSecondaryContent: [ html mdlListItemSecondaryAction								url: '#';								with: [ html mdlIcon: #star ] ] ] ]!

simpleList	^ OrderedDictionary new		add: 'Simple list ' -> #renderSimpleListOn:;		yourself!

threeLineList	^ OrderedDictionary new		add: 'Three line ' -> #renderThreeLineListOn:;		yourself!

twoLineList	^ OrderedDictionary new		add: 'Two line ' -> #renderTwoLineListOn:;		yourself! !
!MDLListsScreen categoriesFor: #avatarActionsList!public!sections! !
!MDLListsScreen categoriesFor: #avatarControlsList!public!sections! !
!MDLListsScreen categoriesFor: #iconsList!public!sections! !
!MDLListsScreen categoriesFor: #renderAvatarActionsListOn:!demos!public! !
!MDLListsScreen categoriesFor: #renderAvatarControlsListOn:!demos!public! !
!MDLListsScreen categoriesFor: #renderIconsListOn:!demos!public! !
!MDLListsScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLListsScreen categoriesFor: #renderSimpleListOn:!demos!public! !
!MDLListsScreen categoriesFor: #renderThreeLineListOn:!demos!public! !
!MDLListsScreen categoriesFor: #renderTwoLineListOn:!demos!public! !
!MDLListsScreen categoriesFor: #simpleList!public!sections! !
!MDLListsScreen categoriesFor: #threeLineList!public!sections! !
!MDLListsScreen categoriesFor: #twoLineList!public!sections! !

!MDLListsScreen class methodsFor!

icon		^ 'complistsPng'!

title	^ 'Lists'! !
!MDLListsScreen class categoriesFor: #icon!accessing!public! !
!MDLListsScreen class categoriesFor: #title!accessing!public! !

