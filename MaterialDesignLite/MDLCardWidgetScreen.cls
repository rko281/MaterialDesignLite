"Filed out from Dolphin Smalltalk 7"!

MDLWidgetDemo subclass: #MDLCardWidgetScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardWidgetScreen guid: (GUID fromString: '{7cf14f20-d3b5-4d76-b585-b76b42d8f28c}')!
MDLCardWidgetScreen comment: 'A Card widget to make easy the use of the cards.'!
!MDLCardWidgetScreen categoriesForClass!Material-Design-Lite-Demo-Widgets! !
!MDLCardWidgetScreen methodsFor!

renderAccentColorCardOn: html	html		render:			(MDLCardWidget new				shadow: 2;				accentColorTitle: 'Card widget example';				addTextContainer: (String loremIpsum: 100);				addAction: [ html mdlButton						colored;						rippleEffect;						with: 'Get started' ];				actionsBordered;				yourself)!

renderBorderedActionsCardOn: html	html		render:			(MDLCardWidget new				shadow: 2;				title: 'Card widget example' level: 2;				addTextContainer: (String loremIpsum: 100);				addAction: [ html mdlButton						colored;						rippleEffect;						with: 'Get started' ];				actionsBordered;				yourself)!

renderCardOn: html	html		render:			(MDLCardWidget new				shadow: 2;				title: 'Card widget example';				addTextContainer: (String loremIpsum: 100);				addAction: [ html mdlButton						colored;						rippleEffect;						with: 'Get started' ];				yourself)!

renderPrimaryColorCardOn: html	html		render:			(MDLCardWidget new				shadow: 2;				primaryColorTitle: 'Card widget example';				addTextContainer: (String loremIpsum: 100);				addAction: [ html mdlButton						colored;						rippleEffect;						with: 'Get started' ];				actionsBordered;				yourself)!

renderScreenContentOn: html	self		render: self simpleCardWidget on: html;		render: self titleColorCardWidget on: html!

simpleCardWidget	^ OrderedDictionary new		add: 'Card widget' -> #renderCardOn:;		add: 'Bordered actions card' -> #renderBorderedActionsCardOn:;		yourself!

titleColorCardWidget	^ OrderedDictionary new		add: 'Primary color card' -> #renderPrimaryColorCardOn:;		add: 'Accent color card' -> #renderAccentColorCardOn:;		yourself! !
!MDLCardWidgetScreen categoriesFor: #renderAccentColorCardOn:!demos!public! !
!MDLCardWidgetScreen categoriesFor: #renderBorderedActionsCardOn:!demos!public! !
!MDLCardWidgetScreen categoriesFor: #renderCardOn:!demos!public! !
!MDLCardWidgetScreen categoriesFor: #renderPrimaryColorCardOn:!demos!public! !
!MDLCardWidgetScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLCardWidgetScreen categoriesFor: #simpleCardWidget!public!sections! !
!MDLCardWidgetScreen categoriesFor: #titleColorCardWidget!public!sections! !

!MDLCardWidgetScreen class methodsFor!

icon	^ 'compcardsPng'!

title	^ 'Cards'! !
!MDLCardWidgetScreen class categoriesFor: #icon!accessing!public! !
!MDLCardWidgetScreen class categoriesFor: #title!accessing!public! !

