"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLLayoutTabBar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutTabBar guid: (GUID fromString: '{3a3227ab-1692-496c-ac45-9ee6c9b1c729}')!
MDLLayoutTabBar comment: 'Description--------------------I am a brush to create a tab bar for layouts.Example--------------------	html mdlLayout		fixedHeader;		with: [ html				mdlLayoutHeader: [ html mdlLayoutHeaderRow: [ html mdlLayoutTitle: ''Title'' ].					html						mdlLayoutTabBar						rippleEffect;						with: [ 1 to: 6 do: [ :int | 								html mdlLayoutTab									isActiveIf: int = 1;									url: ''#tab-'' , int asString;									with: ''Tab '' , int asString ] ] ].			html mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title'' ].			html				mdlLayoutContent: [ 1 to: 6 do: [ :int | 						html mdlLayoutTabPanel							isActiveIf: int = 1;							id: ''tab-'' , int asString ] ] ]'!
!MDLLayoutTabBar categoriesForClass!Material-Design-Lite-Components-Layout! !
!MDLLayoutTabBar methodsFor!

initialize	super initialize.	self class: 'mdl-layout__tab-bar'!

rippleEffect	self class: 'mdl-js-ripple-effect'!

rippleEffectIf: aBoolean	aBoolean ifTrue: [ self class: 'mdl-js-ripple-effect' ]! !
!MDLLayoutTabBar categoriesFor: #initialize!initialization!public! !
!MDLLayoutTabBar categoriesFor: #rippleEffect!options!public! !
!MDLLayoutTabBar categoriesFor: #rippleEffectIf:!options!public! !

