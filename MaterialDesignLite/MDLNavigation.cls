"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLNavigation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNavigation guid: (GUID fromString: '{137c1abf-64f5-4dcd-af3c-a4d87c1e17d6}')!
MDLNavigation comment: 'Description--------------------I am a brush to create a navigation menu.Example--------------------	html mdlLayout		style: ''background: url('''''' , (MDLDemoLibrary urlOf: #transparentJpg) asString , '''''') center / cover;'';		with: [ 			html mdlLayoutHeader				transparent;				with: [ 					html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: ''Title''.							html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title''.					html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ].			html mdlLayoutContent: [  ] ]'!
!MDLNavigation categoriesForClass!Material-Design-Lite-Components-Nav! !
!MDLNavigation methodsFor!

initialize	super initialize.	self class: 'mdl-navigation'!

tag	^ 'nav'! !
!MDLNavigation categoriesFor: #initialize!initialization!public! !
!MDLNavigation categoriesFor: #tag!accessing!public! !

