"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLLayoutContent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutContent guid: (GUID fromString: '{41bb008f-26d4-47cf-83d6-e0cb7aa406a8}')!
MDLLayoutContent comment: 'Description--------------------I am a brush to create a content of a Layout.Example--------------------	html mdlLayout		style: ''background: url('''''' , (MDLDemoLibrary urlOf: #transparentJpg) asString , '''''') center / cover;'';		with: [ 			html mdlLayoutHeader				transparent;				with: [ 					html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: ''Title''.							html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title''.					html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ].			html mdlLayoutContent: [  ] ]'!
!MDLLayoutContent categoriesForClass!Material-Design-Lite-Components-Layout! !
!MDLLayoutContent methodsFor!

initialize	super initialize.	self class: 'mdl-layout__content'!

tag	^ 'main'! !
!MDLLayoutContent categoriesFor: #initialize!initialization!public! !
!MDLLayoutContent categoriesFor: #tag!accessing!public! !

