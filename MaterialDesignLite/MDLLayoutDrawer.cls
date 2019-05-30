"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLLayoutDrawer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutDrawer guid: (GUID fromString: '{9c348e74-8ea3-41d8-b3c8-433408cbfb0f}')!
MDLLayoutDrawer comment: 'Description--------------------I am a brush to create a layout drawer. A drawer is a menu in the title.Example--------------------	html mdlLayout		style: ''background: url('''''' , (MDLDemoLibrary urlOf: #transparentJpg) asString , '''''') center / cover;'';		with: [ 			html mdlLayoutHeader				transparent;				with: [ 					html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: ''Title''.							html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title''.					html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ].			html mdlLayoutContent: [  ] ]'!
!MDLLayoutDrawer categoriesForClass!Material-Design-Lite-Components-Layout! !
!MDLLayoutDrawer methodsFor!

initialize	super initialize.	self class: 'mdl-layout__drawer'! !
!MDLLayoutDrawer categoriesFor: #initialize!initialization!public! !

