"Filed out from Dolphin Smalltalk 7"!

WAAnchorTag subclass: #MDLLayoutTab
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutTab guid: (GUID fromString: '{1537dbf2-d700-4d5c-9163-ef95cdb4f0bd}')!
MDLLayoutTab comment: 'Description--------------------I am a brush to create a tab for layouts.Example--------------------	html mdlLayout		fixedHeader;		with: [ html				mdlLayoutHeader: [ html mdlLayoutHeaderRow: [ html mdlLayoutTitle: ''Title'' ].					html						mdlLayoutTabBar						rippleEffect;						with: [ 1 to: 6 do: [ :int | 								html mdlLayoutTab									isActiveIf: int = 1;									url: ''#tab-'' , int asString;									with: ''Tab '' , int asString ] ] ].			html mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title'' ].			html				mdlLayoutContent: [ 1 to: 6 do: [ :int | 						html mdlLayoutTabPanel							isActiveIf: int = 1;							id: ''tab-'' , int asString ] ] ]'!
!MDLLayoutTab categoriesForClass!Material-Design-Lite-Components-Layout! !
!MDLLayoutTab methodsFor!

initialize	super initialize.	self class: 'mdl-layout__tab'!

isActive	self class: 'is-active'!

isActiveIf: aBoolean	aBoolean		ifTrue: [ self isActive ]! !
!MDLLayoutTab categoriesFor: #initialize!initialization!public! !
!MDLLayoutTab categoriesFor: #isActive!options!public! !
!MDLLayoutTab categoriesFor: #isActiveIf:!options!public! !

