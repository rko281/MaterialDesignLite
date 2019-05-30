"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLAnchorButtonsScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAnchorButtonsScreen guid: (GUID fromString: '{dc26159e-deb0-4e65-8137-65b1a64d1d9c}')!
MDLAnchorButtonsScreen comment: 'Description--------------------I''m the screen representing the anchor buttons'!
!MDLAnchorButtonsScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLAnchorButtonsScreen methodsFor!

coloredButtons	^ OrderedDictionary new		add: 'Colored button' -> #renderColoredButtonCodeOn:;		add: 'Accent colored' -> #renderColoredAccentButtonCodeOn:;		add: 'With Ripples' -> #renderColoredAccentRippleEffectButtonCodeOn:;		yourself!

fabButtons	^ OrderedDictionary new		add: 'Plain FAB' -> #renderFabButtonCodeOn:;		add: 'With ripple' -> #renderFabRippleEffectButtonCodeOn:;		add: 'Disabled' -> #renderFabDisabledButtonCodeOn:;		yourself!

fabColoredButtons	^ OrderedDictionary new		add: 'Colored FAB' -> #renderColoredFabButtonCodeOn:;		add: 'With ripple' -> #renderColoredFabRippleEffectButton2CodeOn:;		yourself!

flatButtons	^ OrderedDictionary new		add: 'Flat button' -> #renderFlatButtonCodeOn:;		add: 'With ripple' -> #renderFlatRippleEffectButtonCodeOn:;		add: 'Disabled' -> #renderFlatDisabledButtonCodeOn:;		yourself!

iconButtons	^ OrderedDictionary new		add: 'Icon button' -> #renderIconButtonCodeOn:;		add: 'Colored' -> #renderIconColoredButtonCodeOn:;		yourself!

miniFabButtons	^ OrderedDictionary new		add: 'Mini FAB' -> #renderMiniFabButtonCodeOn:;		add: 'Colored' -> #renderMiniFabColoredButtonCodeOn:;		yourself!

raisedButtons	^ OrderedDictionary new		add: 'Plain raised' -> #renderRaisedButtonCodeOn:;		add: 'With ripple' -> #renderRaisedRippleEffectButtonCodeOn:;		add: 'Disabled' -> #renderRaisedDisabledButtonCodeOn:;		yourself!

raisedColoredButtons	^ OrderedDictionary new		add: 'Colored button' -> #renderRaisedColoredButtonCodeOn:;		add: 'Accent colored' -> #renderRaisedColoredAccentButtonCodeOn:;		add: 'With Ripples' -> #renderRaisedColoredAccentRippleEffectButtonCodeOn:;		yourself!

renderColoredAccentButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		accentColor;		with: 'Button'!

renderColoredAccentRippleEffectButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		accentColor;		rippleEffect;		with: 'Button'!

renderColoredButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		primaryColor;		with: 'Button'!

renderColoredFabButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		fab;		colored;		with: '+'!

renderColoredFabRippleEffectButton2CodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		fab;		colored;		rippleEffect;		with: '+'!

renderFabButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		fab;		with: '+'!

renderFabDisabledButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		fab;		disabled;		with: '+'!

renderFabRippleEffectButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		fab;		rippleEffect;		with: '+'!

renderFlatButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		with: 'Button'!

renderFlatDisabledButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		disabled;		with: 'Button'!

renderFlatRippleEffectButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		rippleEffect;		with: 'Button'!

renderIconButtonCodeOn: html	"We could also use the #icon: method"	html mdlAnchorButton		callback: [ 'Test' crLog ];		icon;		with: [ html mdlIcon: 'mood' ]!

renderIconColoredButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		primaryColor;		icon: 'mood'!

renderMiniFabButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		fab;		miniFab;		with: '+'!

renderMiniFabColoredButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		fab;		colored;		miniFab;		with: '+'!

renderRaisedButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		raised;		with: 'Button'!

renderRaisedColoredAccentButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		raised;		accentColor;		with: 'Button'!

renderRaisedColoredAccentRippleEffectButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		raised;		accentColor;		rippleEffect;		with: 'Button'!

renderRaisedColoredButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		raised;		primaryColor;		with: 'Button'!

renderRaisedDisabledButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		raised;		disabled;		with: 'Button'!

renderRaisedRippleEffectButtonCodeOn: html	html mdlAnchorButton		callback: [ 'Test' crLog ];		raised;		rippleEffect;		with: 'Button'!

renderScreenContentOn: html	self		render: self fabColoredButtons on: html;		render: self fabButtons on: html;		render: self coloredButtons on: html;		render: self raisedButtons on: html;		render: self raisedColoredButtons on: html;		render: self flatButtons on: html;		render: self iconButtons on: html;		render: self miniFabButtons on: html! !
!MDLAnchorButtonsScreen categoriesFor: #coloredButtons!public!sections! !
!MDLAnchorButtonsScreen categoriesFor: #fabButtons!public!sections! !
!MDLAnchorButtonsScreen categoriesFor: #fabColoredButtons!public!sections! !
!MDLAnchorButtonsScreen categoriesFor: #flatButtons!public!sections! !
!MDLAnchorButtonsScreen categoriesFor: #iconButtons!public!sections! !
!MDLAnchorButtonsScreen categoriesFor: #miniFabButtons!public!sections! !
!MDLAnchorButtonsScreen categoriesFor: #raisedButtons!public!sections! !
!MDLAnchorButtonsScreen categoriesFor: #raisedColoredButtons!public!sections! !
!MDLAnchorButtonsScreen categoriesFor: #renderColoredAccentButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderColoredAccentRippleEffectButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderColoredButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderColoredFabButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderColoredFabRippleEffectButton2CodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderFabButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderFabDisabledButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderFabRippleEffectButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderFlatButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderFlatDisabledButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderFlatRippleEffectButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderIconButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderIconColoredButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderMiniFabButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderMiniFabColoredButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderRaisedButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderRaisedColoredAccentButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderRaisedColoredAccentRippleEffectButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderRaisedColoredButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderRaisedDisabledButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderRaisedRippleEffectButtonCodeOn:!demos!public! !
!MDLAnchorButtonsScreen categoriesFor: #renderScreenContentOn:!public!rendering! !

!MDLAnchorButtonsScreen class methodsFor!

description	^ 'Variations on Material Design buttons like anchors.'!

icon	^ 'compAnchorPng'!

title	^ 'Anchor buttons'! !
!MDLAnchorButtonsScreen class categoriesFor: #description!public!sections! !
!MDLAnchorButtonsScreen class categoriesFor: #icon!accessing!public! !
!MDLAnchorButtonsScreen class categoriesFor: #title!accessing!public! !

