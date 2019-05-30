"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLLayoutTabPanel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutTabPanel guid: (GUID fromString: '{0d96022d-940c-4230-9629-5fae247504b9}')!
MDLLayoutTabPanel comment: 'Description--------------------I am a brush to create a tab panel.Example--------------------	html mdlLayout		fixedHeader;		fixedTabs;		with: [ html				mdlLayoutHeader: [ html mdlLayoutHeaderRow: [ html mdlLayoutTitle: ''Title'' ].					html mdlLayoutTabBar						rippleEffect;						with: [ 1 to: 3 do: [ :int | 								html mdlLayoutTab									isActiveIf: int = 1;									url: ''#tab-'' , int asString;									with: ''Tab '' , int asString ] ] ].			html mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title'' ].			html				mdlLayoutContent: [ 1 to: 3 do: [ :int | 						html mdlLayoutTabPanel							isActiveIf: int = 1;							id: ''tab-'' , int asString ] ] ]'!
!MDLLayoutTabPanel categoriesForClass!Material-Design-Lite-Components-Layout! !
!MDLLayoutTabPanel methodsFor!

initialize	super initialize.	self class: 'mdl-layout__tab-panel'!

isActive	self class: 'is-active'!

isActiveIf: aBoolean	aBoolean ifTrue: [ self isActive ]! !
!MDLLayoutTabPanel categoriesFor: #initialize!initialization!public! !
!MDLLayoutTabPanel categoriesFor: #isActive!options!public! !
!MDLLayoutTabPanel categoriesFor: #isActiveIf:!options!public! !

