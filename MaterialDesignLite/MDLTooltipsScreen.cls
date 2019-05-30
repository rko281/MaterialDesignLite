"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLTooltipsScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTooltipsScreen guid: (GUID fromString: '{c4b4e088-f103-4e65-8c4f-40382bb3249b}')!
MDLTooltipsScreen comment: 'I am representing tooltips screen'!
!MDLTooltipsScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLTooltipsScreen methodsFor!

complexeTooltips	^ OrderedDictionary new		add: 'Rich' -> #renderRichTooltipOn:;		add: 'Multiple Lines' -> #renderMultilinesTooltipOn:;		yourself!

positionedTooltips	^ OrderedDictionary new		add: 'Top' -> #renderTopTooltipOn:;		add: 'Right' -> #renderRightTooltipOn:;		add: 'Bottom' -> #renderBottomTooltipOn:;		add: 'Left' -> #renderLeftTooltipOn:;		yourself!

renderBottomTooltipOn: html	html mdlIcon		id: html nextId;		with: 'print'.	html mdlTooltip		bottom;		for: html lastId;		with: 'Print'!

renderLargeTooltipOn: html	html mdlIcon		id: html nextId;		with: 'print'.	html mdlTooltip		large;		for: html lastId;		with: 'Print'!

renderLeftTooltipOn: html	html mdlIcon		id: html nextId;		with: 'print'.	html mdlTooltip		left;		for: html lastId;		with: 'Print'!

renderMultilinesTooltipOn: html	html mdlIcon		id: html nextId;		with: 'share'.	html mdlTooltip		for: html lastId;		with: [ html text: 'Share your content'.			html break.			html text: 'via social media' ]!

renderRichTooltipOn: html	html mdlIcon		id: html nextId;		with: 'cloud_upload'.	html mdlTooltip		for: html lastId;		with: [ html text: 'Upload '.			html strong: 'file.zip' ]!

renderRightTooltipOn: html	html mdlIcon		id: html nextId;		with: 'print'.	html mdlTooltip		right;		for: html lastId;		with: 'Print'!

renderScreenContentOn: html	self		render: self simpleTooltips on: html;		render: self complexeTooltips on: html;		render: self positionedTooltips on: html!

renderSimpleTooltipOn: html	html mdlIcon		id: html nextId;		with: 'add'.	html mdlTooltip		for: html lastId;		with: 'Follow'!

renderTopTooltipOn: html	html mdlIcon		id: html nextId;		with: 'print'.	html mdlTooltip		top;		for: html lastId;		with: 'Print'!

simpleTooltips	^ OrderedDictionary new		add: 'Simple' -> #renderSimpleTooltipOn:;		add: 'Large' -> #renderLargeTooltipOn:;		yourself! !
!MDLTooltipsScreen categoriesFor: #complexeTooltips!public!sections! !
!MDLTooltipsScreen categoriesFor: #positionedTooltips!public!sections! !
!MDLTooltipsScreen categoriesFor: #renderBottomTooltipOn:!demos!public! !
!MDLTooltipsScreen categoriesFor: #renderLargeTooltipOn:!demos!public! !
!MDLTooltipsScreen categoriesFor: #renderLeftTooltipOn:!demos!public! !
!MDLTooltipsScreen categoriesFor: #renderMultilinesTooltipOn:!demos!public! !
!MDLTooltipsScreen categoriesFor: #renderRichTooltipOn:!demos!public! !
!MDLTooltipsScreen categoriesFor: #renderRightTooltipOn:!demos!public! !
!MDLTooltipsScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLTooltipsScreen categoriesFor: #renderSimpleTooltipOn:!demos!public! !
!MDLTooltipsScreen categoriesFor: #renderTopTooltipOn:!demos!public! !
!MDLTooltipsScreen categoriesFor: #simpleTooltips!public!sections! !

!MDLTooltipsScreen class methodsFor!

description	^ 'Useful informations on hover.'!

icon	^ 'comptooltipsPng'!

title	^ 'Tooltips'! !
!MDLTooltipsScreen class categoriesFor: #description!accessing!public! !
!MDLTooltipsScreen class categoriesFor: #icon!accessing!public! !
!MDLTooltipsScreen class categoriesFor: #title!accessing!public! !

