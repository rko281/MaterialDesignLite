"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLCardMenu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardMenu guid: (GUID fromString: '{d2f8e00c-3951-4291-b0f8-bbadc8a0f328}')!
MDLCardMenu comment: 'Description--------------------I am a brush to create a menu at the top of a card.Example--------------------	html mdlCard		shadow: 2;		mdlTypographyTextLeft;		style: ''width: 512px'';		with: [ 			html mdlCardTitle				style: ''height: 176px; background: url('''''' , (MDLDemoLibrary urlOf: #welcomecardJpg) asString , '''''') center / cover; color: #fff'';				with: [ html mdlCardTitleText: ''Welcome'' ].							html mdlCardTextContainer: ''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis pellentesque lacus eleifend lacinia...''.						html mdlCardActions				border;				with: [ html mdlButton						colored;						rippleEffect;						mdlTypographyFontBold;						with: ''Get Started'' ].								html mdlCardMenu				style: ''color: #fff'';				with: [ html mdlButton						icon;						rippleEffect;						with: [ html mdlIcon: ''share'' ] ] ]'!
!MDLCardMenu categoriesForClass!Material-Design-Lite-Components-Cards! !
!MDLCardMenu methodsFor!

initialize	super initialize.	self class: 'mdl-card__menu'! !
!MDLCardMenu categoriesFor: #initialize!initialization!public! !

