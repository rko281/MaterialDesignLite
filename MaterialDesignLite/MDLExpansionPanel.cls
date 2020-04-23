"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLExpansionPanel
	instanceVariableNames: 'title descriptions expandedBlock isExpanded shadow expansionStrategy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExpansionPanel guid: (GUID fromString: '{f3d3821c-1ed3-4bee-848c-cb10137e1a9e}')!
MDLExpansionPanel comment: 'I am an expansion panel.Basically, I have a title, a description, an icon and I can be folded or expanded to show additional information.Though I provide default icons, one can set a different icon for when I am fold (#foldIcon:) or when I am expanded (#expandIcon:).One can set my initial state via #isExpanded: or #isFolded:.I can use different expansion strategies via #useDisplayNoneExpansionStrategy, #useAjaxExpansionStrategy. #useLazyExpansionStrategy.See MDLExpansionStrategy subclasses for documentation about them.My default strategy is MDLDisplayNoneStrategy.'!
!MDLExpansionPanel categoriesForClass!Material-Design-Lite-Widgets-Expansion! !
!MDLExpansionPanel methodsFor!

description: anObject	self descriptions: { anObject }!

descriptions	^ descriptions!

descriptions: aCollection	descriptions := aCollection!

expandedBlock	^ expandedBlock!

expandedBlock: anObject	expandedBlock := anObject!

expansionStrategy	^ expansionStrategy!

expansionStrategy: anObject	expansionStrategy := anObject!

initialize	super initialize.	self		title: '';		description: '';		shadow: 2;		isExpanded: false;		useHideExpansionStrategy!

isExpanded	^ isExpanded!

isExpanded: anObject	isExpanded := anObject!

isFolded	^ self isExpanded not!

isFolded: aBoolean	self isExpanded: aBoolean not!

renderContentOn: html	self ensureId: html.	html mdlExpansionPanel		id: self id;		shadow: self shadow;		foldIf: self isFolded;		with: [ self renderExpansionPanelHeaderOn: html.			html mdlExpansionPanelContent: [ self renderExpansionPanelContentOn: html ] ]!

renderExpansionPanelContentOn: html	self expansionStrategy renderExpansionPanel: self contentOn: html!

renderExpansionPanelHeaderOn: html	| header |	header := html mdlExpansionPanelHeader		toggleExpansionOnClick;		yourself.	self expansionStrategy customize: header in: self on: html.	header		with: [ html mdlExpansionPanelHeaderTitle: self title.			self descriptions do: [ :description | html mdlExpansionPanelHeaderDescription: description ].			html mdlExpansionPanelHeaderIcon ]!

shadow	^ shadow!

shadow: anObject	shadow := anObject!

title	^ title!

title: anObject	title := anObject!

toggleExpansion	self isExpanded: self isExpanded not!

useAjaxExpansionStrategy	self expansionStrategy: MDLAjaxExpansionStrategy new!

useHideExpansionStrategy	"Default strategy."	self expansionStrategy: MDLHideExpansionStrategy new!

useLazyExpansionStrategy	self expansionStrategy: MDLLazyExpansionStrategy new! !
!MDLExpansionPanel categoriesFor: #description:!accessing!public! !
!MDLExpansionPanel categoriesFor: #descriptions!accessing!public! !
!MDLExpansionPanel categoriesFor: #descriptions:!accessing!public! !
!MDLExpansionPanel categoriesFor: #expandedBlock!accessing!public! !
!MDLExpansionPanel categoriesFor: #expandedBlock:!accessing!public! !
!MDLExpansionPanel categoriesFor: #expansionStrategy!accessing!public! !
!MDLExpansionPanel categoriesFor: #expansionStrategy:!accessing!public! !
!MDLExpansionPanel categoriesFor: #initialize!initialization!public! !
!MDLExpansionPanel categoriesFor: #isExpanded!accessing!public! !
!MDLExpansionPanel categoriesFor: #isExpanded:!accessing!public! !
!MDLExpansionPanel categoriesFor: #isFolded!public!rendering! !
!MDLExpansionPanel categoriesFor: #isFolded:!accessing!public! !
!MDLExpansionPanel categoriesFor: #renderContentOn:!public!rendering! !
!MDLExpansionPanel categoriesFor: #renderExpansionPanelContentOn:!public!rendering! !
!MDLExpansionPanel categoriesFor: #renderExpansionPanelHeaderOn:!public!rendering! !
!MDLExpansionPanel categoriesFor: #shadow!accessing!public! !
!MDLExpansionPanel categoriesFor: #shadow:!accessing!public! !
!MDLExpansionPanel categoriesFor: #title!accessing!public! !
!MDLExpansionPanel categoriesFor: #title:!accessing!public! !
!MDLExpansionPanel categoriesFor: #toggleExpansion!public!toggling! !
!MDLExpansionPanel categoriesFor: #useAjaxExpansionStrategy!configuring!public! !
!MDLExpansionPanel categoriesFor: #useHideExpansionStrategy!configuring!public! !
!MDLExpansionPanel categoriesFor: #useLazyExpansionStrategy!configuring!public! !

