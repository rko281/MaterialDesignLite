"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLButtonsScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLButtonsScreen guid: (GUID fromString: '{0fd08089-2655-47cc-b6b2-27dee1d5add2}')!
MDLButtonsScreen comment: 'Variations on Material Design buttons.'!
!MDLButtonsScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLButtonsScreen methodsFor!

coloredButtons	^ OrderedDictionary new		add: 'Colored button' -> #renderColoredButtonCodeOn:;		add: 'Accent colored' -> #renderColoredAccentButtonCodeOn:;		add: 'With Ripples' -> #renderColoredAccentRippleEffectButtonCodeOn:;		yourself!

fabButtons	^ OrderedDictionary new		add: 'Plain FAB' -> #renderFabButtonCodeOn:;		add: 'With ripple' -> #renderFabRippleEffectButtonCodeOn:;		add: 'Disabled' -> #renderFabDisabledButtonCodeOn:;		yourself!

fabColoredButtons	^ OrderedDictionary new		add: 'Colored FAB' -> #renderColoredFabButtonCodeOn:;		add: 'With ripple' -> #renderColoredFabRippleEffectButton2CodeOn:;		yourself!

flatButtons	^ OrderedDictionary new		add: 'Flat button' -> #renderFlatButtonCodeOn:;		add: 'With ripple' -> #renderFlatRippleEffectButtonCodeOn:;		add: 'Disabled' -> #renderFlatDisabledButtonCodeOn:;		yourself!

iconButtons	^ OrderedDictionary new		add: 'Icon button' -> #renderIconButtonCodeOn:;		add: 'Colored' -> #renderIconColoredButtonCodeOn:;		add: 'Label icon' -> #renderLabelIconButtonCodeOn:;		yourself!

miniFabButtons	^ OrderedDictionary new		add: 'Mini FAB' -> #renderMiniFabButtonCodeOn:;		add: 'Colored' -> #renderMiniFabColoredButtonCodeOn:;		yourself!

raisedButtons	^ OrderedDictionary new		add: 'Plain raised' -> #renderRaisedButtonCodeOn:;		add: 'With ripple' -> #renderRaisedRippleEffectButtonCodeOn:;		add: 'Disabled' -> #renderRaisedDisabledButtonCodeOn:;		yourself!

raisedColoredButtons	^ OrderedDictionary new		add: 'Colored button' -> #renderRaisedColoredButtonCodeOn:;		add: 'Accent colored' -> #renderRaisedColoredAccentButtonCodeOn:;		add: 'With Ripples' -> #renderRaisedColoredAccentRippleEffectButtonCodeOn:;		yourself!

renderColoredAccentButtonCodeOn: html	html mdlButton		accentColor;		with: 'Button'!

renderColoredAccentRippleEffectButtonCodeOn: html	html mdlButton		accentColor;		rippleEffect;		with: 'Button'!

renderColoredButtonCodeOn: html	html mdlButton		primaryColor;		with: 'Button'!

renderColoredFabButtonCodeOn: html	html mdlButton		fab;		colored;		with: '+'!

renderColoredFabRippleEffectButton2CodeOn: html	html mdlButton		fab;		colored;		rippleEffect;		with: '+'!

renderFabButtonCodeOn: html	html mdlButton		fab;		with: '+'!

renderFabDisabledButtonCodeOn: html	html mdlButton		fab;		disabled;		with: '+'!

renderFabRippleEffectButtonCodeOn: html	html mdlButton		fab;		rippleEffect;		with: '+'!

renderFlatButtonCodeOn: html	html mdlButton: 'Button'!

renderFlatDisabledButtonCodeOn: html	html mdlButton		disabled;		with: 'Button'!

renderFlatRippleEffectButtonCodeOn: html	html mdlButton		rippleEffect;		with: 'Button'!

renderIconButtonCodeOn: html	"We could also use the #icon: method"	html mdlButton		icon;		with: [ html mdlIcon: 'mood' ]!

renderIconColoredButtonCodeOn: html	html mdlButton		primaryColor;		icon: 'mood'!

renderLabelIconButtonCodeOn: html	"We could also use the #labelIcon and provide the icon ourself"	html mdlButton labelIcon: 'mood'!

renderMiniFabButtonCodeOn: html	html mdlButton		fab;		miniFab;		with: '+'!

renderMiniFabColoredButtonCodeOn: html	html mdlButton		fab;		colored;		miniFab;		with: '+'!

renderRaisedButtonCodeOn: html	html mdlButton		raised;		with: 'Button'!

renderRaisedColoredAccentButtonCodeOn: html	html mdlButton		raised;		accentColor;		with: 'Button'!

renderRaisedColoredAccentRippleEffectButtonCodeOn: html	html mdlButton		raised;		accentColor;		rippleEffect;		with: 'Button'!

renderRaisedColoredButtonCodeOn: html	html mdlButton		raised;		primaryColor;		with: 'Button'!

renderRaisedDisabledButtonCodeOn: html	html mdlButton		raised;		disabled;		with: 'Button'!

renderRaisedRippleEffectButtonCodeOn: html	html mdlButton		raised;		rippleEffect;		with: 'Button'!

renderScreenContentOn: html	self		render: self fabColoredButtons on: html;		render: self fabButtons on: html;		render: self coloredButtons on: html;		render: self raisedButtons on: html;		render: self raisedColoredButtons on: html;		render: self flatButtons on: html;		render: self iconButtons on: html;		render: self miniFabButtons on: html! !
!MDLButtonsScreen categoriesFor: #coloredButtons!public!sections! !
!MDLButtonsScreen categoriesFor: #fabButtons!public!sections! !
!MDLButtonsScreen categoriesFor: #fabColoredButtons!public!sections! !
!MDLButtonsScreen categoriesFor: #flatButtons!public!sections! !
!MDLButtonsScreen categoriesFor: #iconButtons!public!sections! !
!MDLButtonsScreen categoriesFor: #miniFabButtons!public!sections! !
!MDLButtonsScreen categoriesFor: #raisedButtons!public!sections! !
!MDLButtonsScreen categoriesFor: #raisedColoredButtons!public!sections! !
!MDLButtonsScreen categoriesFor: #renderColoredAccentButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderColoredAccentRippleEffectButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderColoredButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderColoredFabButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderColoredFabRippleEffectButton2CodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderFabButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderFabDisabledButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderFabRippleEffectButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderFlatButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderFlatDisabledButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderFlatRippleEffectButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderIconButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderIconColoredButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderLabelIconButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderMiniFabButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderMiniFabColoredButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderRaisedButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderRaisedColoredAccentButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderRaisedColoredAccentRippleEffectButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderRaisedColoredButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderRaisedDisabledButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderRaisedRippleEffectButtonCodeOn:!demos!public! !
!MDLButtonsScreen categoriesFor: #renderScreenContentOn:!public!rendering! !

!MDLButtonsScreen class methodsFor!

icon	^ 'compbuttonsPng'!

title	^ 'Buttons'! !
!MDLButtonsScreen class categoriesFor: #icon!accessing!public! !
!MDLButtonsScreen class categoriesFor: #title!accessing!public! !

