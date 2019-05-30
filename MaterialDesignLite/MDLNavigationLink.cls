"Filed out from Dolphin Smalltalk 7"!

WAAnchorTag subclass: #MDLNavigationLink
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNavigationLink guid: (GUID fromString: '{cad29787-2fe2-43b1-b328-7033db5f53a4}')!
MDLNavigationLink comment: 'Description--------------------I am a brush to create a navigation link.Example--------------------	html mdlLayout		style: ''background: url('''''' , (MDLDemoLibrary urlOf: #transparentJpg) asString , '''''') center / cover;'';		with: [ 			html mdlLayoutHeader				transparent;				with: [ 					html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: ''Title''.							html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title''.					html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ].			html mdlLayoutContent: [  ] ]'!
!MDLNavigationLink categoriesForClass!Material-Design-Lite-Components-Nav! !
!MDLNavigationLink methodsFor!

beCurrent    self class: 'mdl-navigation__link--current'!

beCurrentIf: aBlockOrBoolean	aBlockOrBoolean value		ifTrue: [ self beCurrent ]!

initialize	super initialize.	self class: 'mdl-navigation__link'! !
!MDLNavigationLink categoriesFor: #beCurrent!options!public! !
!MDLNavigationLink categoriesFor: #beCurrentIf:!options!public! !
!MDLNavigationLink categoriesFor: #initialize!initialization!public! !

