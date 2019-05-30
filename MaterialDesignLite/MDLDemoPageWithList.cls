"Filed out from Dolphin Smalltalk 7"!

MDLDemoPage subclass: #MDLDemoPageWithList
	instanceVariableNames: 'list selectedScreen'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDemoPageWithList guid: (GUID fromString: '{18b7dab2-171a-47ce-9569-c518f33a2023}')!
MDLDemoPageWithList comment: 'Description--------------------An abstract page to manage pages with list of examples to display.'!
!MDLDemoPageWithList categoriesForClass!Material-Design-Lite-Demo-Core! !
!MDLDemoPageWithList methodsFor!

defaultList	^ (MDLNestedList elements: self sortedScreens)		iconBlock: [ :class :renderer | 			renderer anchor				class: 'mdl-list-icon';				callback: [ self select: class ];				with: [ renderer image						url: class iconUrl ] ];		listStyle: #demo;		format: #title;		helpBlock: #description;		actionBlock: [ :screen | self select: screen ];		selectedEntity: self selectedScreen class;		yourself!

hasScreenSelected	^ self selectedScreen isNotNil!

initialize	super initialize.	self list: self defaultList!

initialRequest: aRequest	| consumer pageName |	super initialRequest: aRequest.	consumer := self requestContext consumer.		"If we are at end, nothing to manage"	consumer atEnd ifTrue: [ ^ self ].		pageName := consumer peek asLowercase. "Do not make URLs case sensitive in that case"		"Try to find a page corresponding"	self sortedScreens		detect: [ :each | each pathName asLowercase = pageName ]		ifFound: [ :class | 			self select: class.			"If we find a page, we pop the subpart of the path corresponding to the page."			consumer next ]!

list	^ list!

list: anObject	list := anObject!

renderContentOn: html	html leftPanel		class: 'mdl-components__nav';		shadow: 4;		with: [ html				render: self defaultList;				leftPanelResizer ].	(html tag: 'main')		class: 'mdl-components__pages';		with: [ self renderPageContentOn: html ]!

renderPageContentOn: html	self selectedScreen		ifNil: [ html section				class: 'mdl-doc';				class: #'mdl-components__page';				class: #'mdl-components__page-index';				with: [ html section						beCell: 12;						with: [ html								definitionList: [ html definitionTerm: self class pageName.									html definitionData: [ self renderPageDescriptionOn: html ] ] ].					html div class: 'mdl-components-img' ] ]		ifNotNil: [ :screen | html render: screen ]!

renderPageDescriptionOn: html	self subclassResponsibility!

screens	^ self subclassResponsibility!

select: screen	self		selectedScreen:			(self selectedScreen class = screen				ifTrue: [ nil ]				ifFalse: [ screen new ])!

selectedScreen	^ selectedScreen!

selectedScreen: aScreen	selectedScreen := aScreen!

sortedScreens	^ self screens sorted: [ :a :b | a title < b title ]!

updateUrl: aUrl	super updateUrl: aUrl.	self selectedScreen ifNotNil: [ :screen | aUrl addToPath: screen pathName ]! !
!MDLDemoPageWithList categoriesFor: #defaultList!components!public! !
!MDLDemoPageWithList categoriesFor: #hasScreenSelected!public!testing! !
!MDLDemoPageWithList categoriesFor: #initialize!initialization!public! !
!MDLDemoPageWithList categoriesFor: #initialRequest:!hooks!public! !
!MDLDemoPageWithList categoriesFor: #list!accessing!public! !
!MDLDemoPageWithList categoriesFor: #list:!accessing!public! !
!MDLDemoPageWithList categoriesFor: #renderContentOn:!public!rendering! !
!MDLDemoPageWithList categoriesFor: #renderPageContentOn:!public!rendering! !
!MDLDemoPageWithList categoriesFor: #renderPageDescriptionOn:!public!rendering! !
!MDLDemoPageWithList categoriesFor: #screens!accessing!public! !
!MDLDemoPageWithList categoriesFor: #select:!actions!public! !
!MDLDemoPageWithList categoriesFor: #selectedScreen!accessing!public! !
!MDLDemoPageWithList categoriesFor: #selectedScreen:!accessing!public! !
!MDLDemoPageWithList categoriesFor: #sortedScreens!accessing!public! !
!MDLDemoPageWithList categoriesFor: #updateUrl:!public!updating! !

!MDLDemoPageWithList class methodsFor!

isAbstract	^ self = MDLDemoPageWithList! !
!MDLDemoPageWithList class categoriesFor: #isAbstract!public!testing! !

