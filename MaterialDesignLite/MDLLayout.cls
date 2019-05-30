"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLLayout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayout guid: (GUID fromString: '{6dd9e7cf-8eab-4f0f-b469-9f74f82232c3}')!
MDLLayout comment: 'Description--------------------I am a brush to create a MDL layout.Example--------------------	html mdlLayout		style: ''background: url('''''' , (MDLDemoLibrary urlOf: #transparentJpg) asString , '''''') center / cover;'';		with: [ 			html mdlLayoutHeader				transparent;				with: [ 					html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: ''Title''.							html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title''.					html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ].			html mdlLayoutContent: [  ] ]'!
!MDLLayout categoriesForClass!Material-Design-Lite-Components-Layout! !
!MDLLayout methodsFor!

fixedDrawer	"This option will make the drawer visible all the time instebad of using an icon to show it."	self class: 'mdl-layout--fixed-drawer'!

fixedHeader	"This option will make the header visible of large and small screen. This is not about making the header visible when we scroll but about making the header visible on small screens."	self class: 'mdl-layout--fixed-header'!

fixedTabs	"Uses fixed tabs instead of the default scrollable tabs"	self class: 'mdl-layout--fixed-tabs'!

initialize	super initialize.	self class: 'mdl-layout'.	self class: 'mdl-js-layout'. !

noDesktopDrawerButton	self class: 'mdl-layout--no-desktop-drawer-button' !

noDrawerButton	self class: 'mdl-layout--no-drawer-button' ! !
!MDLLayout categoriesFor: #fixedDrawer!options!public! !
!MDLLayout categoriesFor: #fixedHeader!options!public! !
!MDLLayout categoriesFor: #fixedTabs!options!public! !
!MDLLayout categoriesFor: #initialize!initialization!public! !
!MDLLayout categoriesFor: #noDesktopDrawerButton!options!public! !
!MDLLayout categoriesFor: #noDrawerButton!options!public! !

