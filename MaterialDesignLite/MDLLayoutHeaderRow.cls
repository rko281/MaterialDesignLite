"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLLayoutHeaderRow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutHeaderRow guid: (GUID fromString: '{c82b86ff-5a5c-4b3e-89c0-7112fee00358}')!
MDLLayoutHeaderRow comment: 'Description--------------------I am a brush to create a row for mdl headers.Example--------------------	html mdlLayout		style: ''background: url('''''' , (MDLDemoLibrary urlOf: #transparentJpg) asString , '''''') center / cover;'';		with: [ 			html mdlLayoutHeader				transparent;				with: [ 					html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: ''Title''.							html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title''.					html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ].			html mdlLayoutContent: [  ] ]'!
!MDLLayoutHeaderRow categoriesForClass!Material-Design-Lite-Components-Layout! !
!MDLLayoutHeaderRow methodsFor!

initialize	super initialize.	self class: 'mdl-layout__header-row'! !
!MDLLayoutHeaderRow categoriesFor: #initialize!initialization!public! !

