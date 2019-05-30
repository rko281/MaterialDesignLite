"Filed out from Dolphin Smalltalk 7"!

MDLCardInnerDiv subclass: #MDLCardTextContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardTextContainer guid: (GUID fromString: '{1104fad5-0850-4ba2-aa98-3cad1bc44f79}')!
MDLCardTextContainer comment: 'Description--------------------I am a brush to create a text container for cards.Example--------------------	html mdlCard		shadow: 2;		mdlTypographyTextLeft;		style: ''width: 512px'';		with: [ 			html mdlCardTitle				style: ''height: 176px; background: url('''''' , (MDLDemoLibrary urlOf: #welcomecardJpg) asString , '''''') center / cover; color: #fff'';				with: [ html mdlCardTitleText: ''Welcome'' ].							html mdlCardTextContainer: ''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis pellentesque lacus eleifend lacinia...''.						html mdlCardActions				border;				with: [ html mdlButton						colored;						rippleEffect;						mdlTypographyFontBold;						with: ''Get Started'' ].								html mdlCardMenu				style: ''color: #fff'';				with: [ html mdlButton						icon;						rippleEffect;						with: [ html mdlIcon: ''share'' ] ] ]'!
!MDLCardTextContainer categoriesForClass!Material-Design-Lite-Components-Cards! !
!MDLCardTextContainer methodsFor!

initialize	super initialize.	self class: 'mdl-card__supporting-text'! !
!MDLCardTextContainer categoriesFor: #initialize!initialization!public! !

