"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLLayoutHeader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutHeader guid: (GUID fromString: '{6f3508ea-0ae7-4408-9c64-9ce044008465}')!
MDLLayoutHeader comment: 'Description--------------------I am a brush to create a header for a layout.Example--------------------	html mdlLayout		style: ''background: url('''''' , (MDLDemoLibrary urlOf: #transparentJpg) asString , '''''') center / cover;'';		with: [ 			html mdlLayoutHeader				transparent;				with: [ 					html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: ''Title''.							html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title''.					html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ].			html mdlLayoutContent: [  ] ]'!
!MDLLayoutHeader categoriesForClass!Material-Design-Lite-Components-Layout! !
!MDLLayoutHeader methodsFor!

initialize	super initialize.	self class: 'mdl-layout__header'!

scroll	"Makes the header scroll with the content"	self class: 'mdl-layout__header--scroll'!

seamed	"Uses a header without a shadow"	self class: 'mdl-layout__header--seamed'!

tag	^ 'header'!

transparent	self class: 'mdl-layout__header--transparent'!

waterfall	"Allows a 'waterfall' effect with multiple header lines"	self class: 'mdl-layout__header--waterfall'!

waterfallHideTop	"Hides the top rather than the bottom rows on a waterfall header"	self class: 'mdl-layout__header--waterfall-hide-top'! !
!MDLLayoutHeader categoriesFor: #initialize!initialization!public! !
!MDLLayoutHeader categoriesFor: #scroll!options!public! !
!MDLLayoutHeader categoriesFor: #seamed!options!public! !
!MDLLayoutHeader categoriesFor: #tag!accessing!public! !
!MDLLayoutHeader categoriesFor: #transparent!options!public! !
!MDLLayoutHeader categoriesFor: #waterfall!options!public! !
!MDLLayoutHeader categoriesFor: #waterfallHideTop!options!public! !

