"Filed out from Dolphin Smalltalk 7"!

MDLDemoComponent subclass: #MDLDemo
	instanceVariableNames: 'header footer componentToDisplay componentInstances'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDemo guid: (GUID fromString: '{90401f96-ed61-4cf3-b890-fc1a6044c0bc}')!
MDLDemo comment: 'Description--------------------Root component of MDL for Seaside demo. Internal Representation and Key Implementation Points.--------------------    Instance Variables	componentInstances:			<aDictionary>	A dictionary keeping for each component class, an instance. This instance can be use when the user change of page to come pack to a previous page.	componentToDisplay:		<aComponent>	The current page to display as the root content.	footer:						<aComponent>	The header of the page.	header:						<aComponent>	The footer of the page.'!
!MDLDemo categoriesForClass!Material-Design-Lite-Demo-Core! !
!MDLDemo methodsFor!

children	^ { self header. self componentToDisplay. self footer }!

componentInstances	^ componentInstances!

componentInstances: anObject	componentInstances := anObject!

componentToDisplay	"Component instance to display in the application."		^ componentToDisplay!

componentToDisplay: anObject	componentToDisplay := anObject!

defaultFooter	^ MDLDemoFooter new!

defaultHeader	^ MDLDemoHeader new!

displayInstanceOf: aComponentClass	self componentToDisplay: (self componentInstances at: aComponentClass ifAbsentPut: [ aComponentClass new ])!

footer	^ footer!

footer: anObject	footer := anObject!

header	^ header!

header: anObject	header := anObject!

initialize	super initialize.	self header: self defaultHeader.	self footer: self defaultFooter.	self session rootComponent: self.	self componentInstances: Dictionary new.	self displayInstanceOf: MDLDemoPage pagesToDisplay first!

initialRequest: aRequest	| consumer pageName |	super initialRequest: aRequest.	consumer := self requestContext consumer.		"If we are at end, nothing to manage"	consumer atEnd ifTrue: [ ^ self ].		pageName := consumer peek asLowercase. "Do not make URLs case sensitive in that case"		"Try to find a page corresponding"	self header possiblePages		detect: [ :each | each pathName asLowercase = pageName ]		ifFound: [ :class | 			self displayInstanceOf: class.			"If we find a page, we pop the subpart of the path corresponding to the page."			consumer next ]!

renderContentOn: html	html		mdlLayout: [ html render: self header.			html mdlLayoutContent				class: 'mdl-color-text--grey-600';				with: [ html mdlGrid						noSpacing;						with: [ html mdlCell								class: 'mdl-components';								size: 12;								with: [ html render: self componentToDisplay ] ].					html render: self footer ].			html mdlButton				id: #scrollTop;				fab;				miniFab;				colored;				with: [ html mdlIcon: #arrow_upward ] ]!

style	^ '.mdl-pagination__current{        box-shadow: inset 0px -4px 0px 0px #E91E63 !!important;    }'!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	anHtmlRoot beHtml5.	anHtmlRoot title: 'Demo - Material Design Lite for Seaside'.	anHtmlRoot meta		attributeAt: 'name' put: 'viewport';		content: 'width=device-width, initial-scale=1'.	self updateTabIconRoot: anHtmlRoot.	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.deep_purple-pink.min.css').	anHtmlRoot javascript add: 'hljs.initHighlightingOnLoad();'!

updateTabIconRoot: anHtmlRoot	anHtmlRoot link		relationship: 'apple-touch-icon';		attributeAt: 'sizes' put: '120x120';		url: (MDLDemoLibrary urlOf: 'appleicon120x120Png').	#('32x32' '16x16')		do: [ :size | 			anHtmlRoot link				relationship: 'icon';				type: 'image/png';				url: (MDLDemoLibrary urlOf: 'favicon' , size , 'Png');				attributeAt: 'sizes' put: size ].	anHtmlRoot link		relationship: 'manifest';		url: (MDLDemoLibrary urlOf: 'siteWebmanifest').	anHtmlRoot meta		name: 'msapplication-TileColor';		content: '#da532c'.	anHtmlRoot link		relationship: 'mask-icon';		attributeAt: 'color' put: '#5bbad5';		url: (MDLDemoLibrary urlOf: 'safaripinnedtabSvg').	anHtmlRoot meta		name: 'theme-color';		content: '#ffffff'!

updateUrl: aUrl	super updateUrl: aUrl.	aUrl addToPath: (self componentToDisplay pathName)!

version	^ self class version! !
!MDLDemo categoriesFor: #children!hooks!public! !
!MDLDemo categoriesFor: #componentInstances!accessing!public! !
!MDLDemo categoriesFor: #componentInstances:!accessing!public! !
!MDLDemo categoriesFor: #componentToDisplay!accessing!public! !
!MDLDemo categoriesFor: #componentToDisplay:!accessing!public! !
!MDLDemo categoriesFor: #defaultFooter!components!public! !
!MDLDemo categoriesFor: #defaultHeader!components!public! !
!MDLDemo categoriesFor: #displayInstanceOf:!public!updating! !
!MDLDemo categoriesFor: #footer!accessing!public! !
!MDLDemo categoriesFor: #footer:!accessing!public! !
!MDLDemo categoriesFor: #header!accessing!public! !
!MDLDemo categoriesFor: #header:!accessing!public! !
!MDLDemo categoriesFor: #initialize!initialization!public! !
!MDLDemo categoriesFor: #initialRequest:!hooks!public! !
!MDLDemo categoriesFor: #renderContentOn:!public!rendering! !
!MDLDemo categoriesFor: #style!hooks!public! !
!MDLDemo categoriesFor: #updateRoot:!public!updating! !
!MDLDemo categoriesFor: #updateTabIconRoot:!public!updating! !
!MDLDemo categoriesFor: #updateUrl:!public!updating! !
!MDLDemo categoriesFor: #version!accessing!public! !

!MDLDemo class methodsFor!

canBeRoot	^ true!

initialize	^ self initializeAs: 'MDLDemo'!

initializeAs: aString	| app |	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults removeParent: class instance ].	app := WAAdmin register: self asApplicationAt: aString.	app configuration		at: #maximumAbsoluteAge put: 0;		at: #maximumRelativeAge put: 7 days asSeconds.	app		preferenceAt: #sessionClass put: MDLDemoSession;		addLibrary: JQDeploymentLibrary;		addLibrary: MDLLibrary;		addLibrary: MDLDemoLibrary.	^ app!

menuCommandOn: aBuilder	##(Pragma worldMenu).	(aBuilder item: #'Open demo in default browser')		order: 2;		iconName: #nautilus;		parent: #MaterialDesignLite;		help: 'Open the demo in the default web browser';		action: [ self open ].!

version	^ 'v2.2.1'! !
!MDLDemo class categoriesFor: #canBeRoot!public!testing! !
!MDLDemo class categoriesFor: #initialize!initialization!public! !
!MDLDemo class categoriesFor: #initializeAs:!initialization!public! !
!MDLDemo class categoriesFor: #menuCommandOn:!public!world menu! !
!MDLDemo class categoriesFor: #version!public!versions! !

