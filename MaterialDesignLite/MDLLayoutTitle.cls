"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLLayoutTitle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutTitle guid: (GUID fromString: '{6553a008-69e7-431f-81ee-cc78686da094}')!
MDLLayoutTitle comment: 'Description--------------------I am a brush to create a title for a layout.Example--------------------	html mdlLayout		style: ''background: url('''''' , (MDLDemoLibrary urlOf: #transparentJpg) asString , '''''') center / cover;'';		with: [ 			html mdlLayoutHeader				transparent;				with: [ 					html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: ''Title''.							html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title''.					html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ].			html mdlLayoutContent: [  ] ]'!
!MDLLayoutTitle categoriesForClass!Material-Design-Lite-Components-Layout! !
!MDLLayoutTitle methodsFor!

initialize	super initialize.	self class: 'mdl-layout-title'!

tag	^'span'! !
!MDLLayoutTitle categoriesFor: #initialize!initialization!public! !
!MDLLayoutTitle categoriesFor: #tag!accessing!public! !

