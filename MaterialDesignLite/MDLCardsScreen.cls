"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLCardsScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardsScreen guid: (GUID fromString: '{cfc8fd49-3663-4a39-84f6-f7ec5fbc11d6}')!
MDLCardsScreen comment: 'I am the screen representing cards.'!
!MDLCardsScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLCardsScreen methodsFor!

imageCards	^ OrderedDictionary new		add: 'Image' -> #renderImageCardOn:;		add: 'Event' -> #renderDateCardOn:;		yourself!

renderDateCardOn: html	html mdlCard		shadow: 2;		mdlTypographyTextLeft;		style: 'width: 256px; height: 256px;  background: #3E4EB8;';		with: [ 			html mdlCardTitleContainer				style: 'align-items: flex-start; color: #fff';				expand;				with: [ html mdlCardTitleText						style: 'margin-top: 0; align-self: flex-start';						level: 4;						with: [ html text: 'Featured event:'.							html break.							html text: 'May 25, 2016'.							html break.							html text: '7-11pm' ] ].								html mdlCardActions				border;				style:					'border-color: rgba(255, 255, 255, 0.2);								display: flex;  								box-sizing:border-box;  								align-items: center;								color: #fff';				with: [ html mdlButton						colored;						rippleEffect;						mdlTypographyFontBold;						style: 'color: #fff';						with: 'Add to calendar'.					html mdlLayoutSpacer.					html mdlIcon						style: 'padding-right: 10px';						with: 'event' ] ]!

renderImageCardOn: html	html mdlCard		shadow: 2;		mdlTypographyTextLeft;		style: 'width: 256px; height: 256px; background: url(''' , (MDLDemoLibrary urlOf: #imagecardJpg) asString , ''') center / cover';		with: [ 			html mdlCardTitleContainer expand.						html mdlCardActions				style: 'height: 52px; padding: 16px; background: rgba(0,0,0,0.2)';				with: [ html span						mdlTypographyFontBold;						style: 'color: #fff; font-size: 14px';						with: 'Image.jpg' ] ]!

renderScreenContentOn: html	self		render: self wideCards on: html;		render: self squareCards on: html;		render: self imageCards on: html!

renderSquareCardOn: html	html mdlCard		shadow: 2;		mdlTypographyTextLeft;		style: 'width: 320px; height: 320px';		with: [ 			html mdlCardTitleContainer				expand;				style: 'color: #fff;background: url(''' , (MDLDemoLibrary urlOf: #dogPng) asString , ''') bottom right 15% no-repeat #46B6AC;';				with: [ html mdlCardTitleText: 'Update' level: 2 ].							html mdlCardTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenan convallis.'.						html mdlCardActions				border;				with: [ html mdlButton						mdlTypographyFontBold;						colored;						rippleEffect;						with: 'View Updates' ] ]!

renderWideCardOn: html	html mdlCard		shadow: 2;		mdlTypographyTextLeft;		style: 'width: 512px';		with: [ 			html mdlCardTitleContainer				style: 'height: 176px; background: url(''' , (MDLDemoLibrary urlOf: #welcomecardJpg) asString , ''') center / cover; color: #fff';				with: [ html mdlCardTitleText: 'Welcome' ].							html mdlCardTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis pellentesque lacus eleifend lacinia...'.						html mdlCardActions				border;				with: [ html mdlButton						colored;						rippleEffect;						mdlTypographyFontBold;						with: 'Get Started' ].								html mdlCardMenu				style: 'color: #fff';				with: [ html mdlButton						icon;						rippleEffect;						with: [ html mdlIcon: 'share' ] ] ]!

squareCards	^ OrderedDictionary new		add: 'Square' -> #renderSquareCardOn:;		yourself!

wideCards	^ OrderedDictionary new		add: 'Wide' -> #renderWideCardOn:;		yourself! !
!MDLCardsScreen categoriesFor: #imageCards!public!sections! !
!MDLCardsScreen categoriesFor: #renderDateCardOn:!demos!public! !
!MDLCardsScreen categoriesFor: #renderImageCardOn:!demos!public! !
!MDLCardsScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLCardsScreen categoriesFor: #renderSquareCardOn:!demos!public! !
!MDLCardsScreen categoriesFor: #renderWideCardOn:!demos!public! !
!MDLCardsScreen categoriesFor: #squareCards!public!sections! !
!MDLCardsScreen categoriesFor: #wideCards!public!sections! !

!MDLCardsScreen class methodsFor!

description	^ 'Self-contained pieces of paper with data'!

icon		^ 'compcardsPng'!

title	^ 'Cards'! !
!MDLCardsScreen class categoriesFor: #description!accessing!public! !
!MDLCardsScreen class categoriesFor: #icon!accessing!public! !
!MDLCardsScreen class categoriesFor: #title!accessing!public! !

