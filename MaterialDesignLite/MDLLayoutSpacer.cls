"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLLayoutSpacer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutSpacer guid: (GUID fromString: '{90076c4f-9235-431b-bfba-6326711db8e3}')!
MDLLayoutSpacer comment: 'Description--------------------I am a brush to create a spacer for layouts.Example--------------------	html mdlLayout		style: ''background: url('''''' , (MDLDemoLibrary urlOf: #transparentJpg) asString , '''''') center / cover;'';		with: [ 			html mdlLayoutHeader				transparent;				with: [ 					html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: ''Title''.							html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title''.					html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ].			html mdlLayoutContent: [  ] ]'!
!MDLLayoutSpacer categoriesForClass!Material-Design-Lite-Components-Layout! !
!MDLLayoutSpacer methodsFor!

initialize	super initialize.	self class: 'mdl-layout-spacer'! !
!MDLLayoutSpacer categoriesFor: #initialize!initialization!public! !

